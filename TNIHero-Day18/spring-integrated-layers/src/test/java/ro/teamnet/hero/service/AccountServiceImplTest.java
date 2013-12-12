package ro.teamnet.hero.service;

import junit.framework.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ro.teamnet.hero.config.InfrastructureConfig;
import ro.teamnet.hero.domain.Account;
import ro.teamnet.hero.domain.Person;

import java.math.BigDecimal;

/**
 * Created by Costin on 12/10/13.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {InfrastructureConfig.class})
public class AccountServiceImplTest {

    @Autowired
    private AccountService accountService;

    private Account account1;
    private Account account2;
    private Account account3;

    @Before
    public void setUp() throws Exception {
        account1 = new Account();
        account1.setUserName("sdad");
        account1.setEmail("dasda");
        account1.setPassword("sdad");
        Person person1 = new Person();
        person1.setFirstName("dsada");
        person1.setLastName("dsada");
        account1.setPerson(person1);

    }

    @Test
    public void testCreateAccount() throws Exception {
        Account testAccount = accountService.createAccount(account1);
        Assert.assertNotNull(testAccount.getId());
    }

    @Test
    public void testFindById() throws Exception {
      /*  Account testAccount2 = accountService.createAccount(account2);
        Account testAccount3 = accountService.createAccount(account3);*/
        Assert.assertNotNull(accountService.findById(BigDecimal.ONE).getId());

    }
}
