package th.ac.ku.kps.eng.cpe.edu.project.ukamarket;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("th.ac.ku.kps.eng.cpe.edu.project")
@EnableJpaRepositories("th.ac.ku.kps.eng.cpe.edu.project.repository")
public class UkamarketApplication {

	public static void main(String[] args) {
		SpringApplication.run(UkamarketApplication.class, args);
	}

}
