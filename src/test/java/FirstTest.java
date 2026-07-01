import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.Test;

  public class FirstTest {

        @Test
        public void openGoogle() {
            WebDriverManager.chromedriver().setup();
            WebDriver driver = new ChromeDriver();
            driver.get("https://www.google.com");
            String title = driver.getTitle();
            System.out.println("Page Title hai: " + title);
            Assert.assertTrue(title.contains("Google"));
            driver.quit();
        }
    }

