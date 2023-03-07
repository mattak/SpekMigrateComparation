package me.mattak.spekmigratecomparation

import org.junit.Assert
import org.spekframework.spek2.Spek
import org.spekframework.spek2.style.gherkin.Feature
import org.spekframework.spek2.style.specification.describe

object ExampleUnitTest : Spek({
    Feature("加減算") {
        Scenario("addition_isCorrect") {
            Then("正しい") {
                Assert.assertEquals(4, 2 + 2)
            }
        }
    }
    describe("test") {
        it("addition_isCorrect") {
            Assert.assertEquals(4, 2 + 2)
        }
    }
})