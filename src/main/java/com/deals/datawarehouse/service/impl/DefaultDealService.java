package com.deals.datawarehouse.service.impl;

import com.deals.datawarehouse.entity.Deal;
import com.deals.datawarehouse.exception.DealException;
import com.deals.datawarehouse.repository.DealRepository;
import com.deals.datawarehouse.service.DealService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

/***
 * @author nabil
 * DefaultDealService is the default implementation for the deal service
 */
@Service("dealService") public class DefaultDealService implements DealService {

	private static final Logger LOG = LoggerFactory.getLogger(DefaultDealService.class);

	@Resource(name = "dealRepository") private DealRepository dealRepository;

	@Override public Deal createDeal(Deal deal) throws DealException {
        // validating deal before creating
		validateNewDeal(deal);

		if (this.getDealById(deal.getId()).isPresent()) {
			LOG.error("Deal already exists for ID {}", deal.getId());
			throw new DealException("Deal already exists for ID" + deal.getId());
		}
		LOG.info("Creating a deal with ID: {}", deal.getId());
		// Saving the amount based on the ordering currency digits
		deal.setDealAmount(deal.getDealAmount().setScale(deal.getOrderCurrency().getDefaultFractionDigits(), RoundingMode.HALF_UP));
		deal.setCreationDate(LocalDateTime.now());
		return dealRepository.save(deal);
	}

	@Override public Optional<Deal> getDealById(String dealId) {
		if (dealId == null || dealId.isBlank() || dealId.isEmpty()) {
			return Optional.empty();
		}
		LOG.info("Getting deal with ID {}", dealId);
		return dealRepository.findById(dealId);
	}

	@Override public List<Deal> getAllDeals() {
		LOG.info("Getting all deals");
		return dealRepository.findAll();
	}

	@Override public List<Deal> getAllDealsSorted() {
		LOG.info("Getting all deals after sorting on creation date");
		return getAllDeals().stream().sorted(Comparator.comparing(Deal::getCreationDate).reversed()).collect(Collectors.toList());
	}

	private boolean validateNonNullRequiredField(Object field, String fieldName) {
		if (Objects.isNull(field)) {
			LOG.error(fieldName + " must not be empty!");
			return true;
		}
		return false;
	}

	private void validateNewDeal(Deal deal) throws DealException {
		if (validateNonNullRequiredField(deal.getId(), "ID")) {
			throw new DealException("ID must not be empty!");
		}
		if (validateNonNullRequiredField(deal.getOrderCurrency(), "OrderCurrency")) {
			throw new DealException("OrderCurrency must not be empty!");
		}
		if (validateNonNullRequiredField(deal.getToCurrency(), "ToCurrency")) {
			throw new DealException("ToCurrency must not be empty!");
		}
		if (validateNonNullRequiredField(deal.getDealDate(), "DealDate")) {
			throw new DealException("DealDate must not be empty!");
		}
		if (validateNonNullRequiredField(deal.getDealAmount(), "DealAmount")) {
			throw new DealException("DealAmount must not be empty!");
		}
	}

}
