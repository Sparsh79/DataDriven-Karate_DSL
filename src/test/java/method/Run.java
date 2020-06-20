package method;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

/**Cucumber Option to run Karate API*/
@KarateOptions(tags={"@SampleAPI"},
        features = {"src/test/java/com/knoldus"}
)
public class Run {
    /**This is the API Test runner Junit*/
    @Test
    public void testParallel() {
        String karateOutputPath = "target";
        Results stats = Runner.parallel(getClass(), 2, karateOutputPath);
    }
}