package experimental

import org.scalatest._

class HelloWorldTest extends FlatSpec with Matchers {
  "HelloWorld" should "compile correctly" in {
    true
  }

  it should "output a string correctly" in {
    var out = ""
    new HelloWorld(str => out = str).main()
    out shouldBe "Hello, world!"
  }
}