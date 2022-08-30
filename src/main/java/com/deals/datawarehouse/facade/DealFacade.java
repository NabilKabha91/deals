package com.deals.datawarehouse.facade;

import com.deals.datawarehouse.dto.DealDTO;
import com.deals.datawarehouse.exception.DealException;

import java.util.List;
import java.util.Optional;

/***
 * @author nabil
 *  Deal Facade is the layer that handle the controller requests and push them into the service after the conversion
 */
public interface DealFacade {

    DealDTO createNewDeal(DealDTO deal) throws DealException;

    boolean doesDealExist(String dealId);

    Optional<DealDTO> getDealById(String dealId);

    List<DealDTO> getAllDeals();
}
