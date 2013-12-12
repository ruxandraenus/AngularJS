package ro.teamnet.hero.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ro.teamnet.hero.domain.Account;

import java.math.BigDecimal;

/**
 * Created by Costin on 12/10/13.
 */
@Repository
public interface AccountRepository extends JpaRepository<Account, BigDecimal> {

}
