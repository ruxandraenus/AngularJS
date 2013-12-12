package ro.teamnet.hero.controller;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ro.teamnet.hero.domain.Account;
import ro.teamnet.hero.service.AccountService;

import java.util.List;

/**
 * Created by Costin on 12/11/13.
 */
@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountService accountService;

    @ResponseBody
    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<String> accountList() {
        List<Account> accountList = accountService.findAll();
        JSONSerializer jsonSerializer = new JSONSerializer();
        String accountListJson = jsonSerializer.exclude("*.class").exclude("person").serialize(accountList);
        return new ResponseEntity<String>(accountListJson, HttpStatus.OK);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> createAccount(@RequestBody String json) {
        Account accountTransient = new JSONDeserializer<Account>().use(null, Account.class).deserialize(json);
        Account accountDetached = accountService.createAccount(accountTransient);
        return new ResponseEntity<String>(
                new JSONSerializer().exclude("*.class").exclude("person").serialize(accountDetached),
                HttpStatus.OK
        );
    }
}


