package ro.teamnet.hero.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ro.teamnet.hero.domain.Account;
import ro.teamnet.hero.repository.AccountRepository;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Costin on 12/10/13.
 */
@Service
@Transactional(readOnly = true)
public class AccountServiceImpl implements AccountService {

    private AccountRepository accountRepository;

    @Autowired
    public AccountServiceImpl(AccountRepository accountRepository) {
        this.accountRepository = accountRepository;
    }

    @Transactional
    @Override
    public Account createAccount(Account account) {
        return accountRepository.save(account);
    }

    @Transactional
    @Override
    public Account findById(BigDecimal idAccount) {

        return accountRepository.findOne(idAccount);
        /*
        List<Account> accountList = accountRepository.findAll();
        for (Account account : accountList) {
            if(account.getId().compareTo(idAccount) == 0) {
                return account;
            }
        }
        return null;
        */
    }

    @Transactional
    @Override
    public List<Account> findAll() {
        return accountRepository.findAll();
    }
}
