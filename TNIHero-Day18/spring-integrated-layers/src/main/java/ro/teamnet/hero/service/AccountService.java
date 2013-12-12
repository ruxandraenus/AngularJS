package ro.teamnet.hero.service;

import ro.teamnet.hero.domain.Account;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Costin on 12/10/13.
 */

public interface AccountService{

    Account createAccount(Account account);

    Account findById(BigDecimal idAccount);

    List<Account> findAll();
}
