namespace Yoda\UserBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class RegisterControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = static::createClient();
        
	    $crawler = $client->request('GET', '/register');

	    $this->assertEquals(200, $client->getResponse()->getStatusCode());
	    $this->assertTrue($crawler->filter('html:contains("Register")')->count() > 0);
    }
}