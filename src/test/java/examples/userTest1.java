package examples;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
/*Below option is used to run only specific feature files*/
@KarateOptions(features = "classpath:examples/users/users_experiment.feature")
public class userTest1 {
    // refer to https://github.com/intuit/karate#naming-conventions
    // for folder-structure recommendations and naming conventions
}