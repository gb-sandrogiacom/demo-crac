package br.com.blz.demo.crac.controller

import br.com.blz.demo.crac.config.Configuration
import org.crac.Core
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.ResponseStatus
import org.springframework.web.bind.annotation.RestController

@RestController
class HelloController(val config : Configuration) {

    @GetMapping("/hello")
    @ResponseStatus(HttpStatus.OK)
    fun hello(): String {
        println("DB_PWD: ${System.getenv("DB_PWD")}")
        println("Config pwd: " + config.dbPwd)
        return "Hello CRaC!"
    }

    @PostMapping("/check-point")
    @ResponseStatus(HttpStatus.OK)
    fun checkPoint() {
        println("Check Point at : " + System.currentTimeMillis())
        //Delete content of the checkpoint folder before
        Core.checkpointRestore()
    }

}
