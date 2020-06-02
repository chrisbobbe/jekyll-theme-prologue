---
title: The beginnings of dinobot
author: Teo
layout: post
---
<header> <h3> Challenges of browser emulation with Selenium in Java </h3> </header>
<p> I got inspired to start this project after seeing a Youtube <a href="https://www.youtube.com/watch?v=Du__JfXqsAs">video</a> about android game app automatization in Python. I decided to turn the difficulty up a knotch and attempt my first ever project in Java: a bot that plays the Google Chrome offline dinosaur game. This is how <a href="https://github.com/teopufulete/dinobot">dinobot</a> was born, and I'm very thrilled to see where it will lead, as I have many improvements in mind, but that's for another <a href="">post</a>. Now let's dive in! </p>

<h3>Setting up: Creating a Maven project in Eclipse for the first time</h3>
<p> Right of the bat I faced the difficulties, but nothing a few minutes (<sub> or hours </sub>) of googling couldn't solve. I learned how to set up a Maven project in Eclipse and with all the required dependencies for the Selenium imports I wanted using this <a href="https://www.techbeamers.com/create-selenium-webdriver-maven-project/">tutorial</a>. </p>

<h3>Broswer Emulation</h3>
<p> Needing to emulate Chrome I had to download the Selenium Chrome <a href="
https://chromedriver.chromium.org/downloads">driver</a> compatible with my current Chrome version. One of the first bugs I ran into was initializing the driver- inputing the its path did not seem to work, so I just ended up moving the executable into the dinobot project directory. The following code excerpt initializes the driver and starts up the bot. </p>
<pre><code>public class GameStart {
	public static void main(String[] args) {
        //initialize driver
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        //start dinobot
        new TRexBot().startGame();
    }
}</code></pre>

<p> The next code excerpt is from the main TRexBot class, that opens a new Chrome window and browses to the game's link.
<pre><code>public class TRexBot {
  //class level variables 
	private ChromeDriver driver;
	private WebElement window;
    public TRexBot() {
    }
    // initialize a new chrome instance
    private void initializeDriver() {
    	driver =  new ChromeDriver();
    }
    private void initializeGamePage() {
      // go to the chrome dino game page
      driver.get("chrome://dino/");
      // find the element we need to analyze
      window = driver.findElement(By.cssSelector(".runner-canvas"));
      new WebDriverWait(driver, 1000).until(ExpectedConditions.visibilityOf(window));
    }
    public void startGame() {
        initializeGamePage();
        // the start game function will be discussed later
        start();
    }
    </code></pre></p>
