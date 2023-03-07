package me.mattak.spekmigratecomparation

import io.kotest.core.spec.style.ShouldSpec
import io.kotest.matchers.shouldBe

class ExampleUnitTest : ShouldSpec({
    should("addition is correct") {
        (2+2) shouldBe 4
    }
})