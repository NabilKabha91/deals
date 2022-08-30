package com.deals.datawarehouse.repository;

import com.deals.datawarehouse.entity.Deal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

/***
 * @author nabil
 * The repository that connects to the database to insert and retrieve the deals
 */
@Repository
public interface DealRepository extends JpaRepository<Deal, String>, JpaSpecificationExecutor<Deal> {
}