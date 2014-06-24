<?php
namespace Yoda\TestBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class RegisterControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = static::createClient();
        
	    $crawler = $client->request('GET', '/register');

	    $this->assertEquals(404, $client->getResponse()->getStatusCode());
    }
}
?>
