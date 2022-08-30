package com.deals.datawarehouse.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Currency;

/***
 * @author nabil
 * The entity the has been reflected into the database to save the deals
 */
@Entity
@Table(schema = "DEALS", name = "deal")
@Data
@NoArgsConstructor
public class Deal {

    @Setter
    @Id
    @Column(name = "id", nullable = false)
    private String id;

    @Column(name = "order_currency", nullable = false)
    private Currency orderCurrency;

    @Column(name = "to_currency", nullable = false)
    private Currency toCurrency;

    @Column(name = "deal_date", updatable = false)
    private LocalDateTime dealDate;

    @Column(name = "deal_amount", nullable = false)
    private BigDecimal dealAmount;

    @Column(name = "creation_date", nullable = false)
    private LocalDateTime creationDate;


}
