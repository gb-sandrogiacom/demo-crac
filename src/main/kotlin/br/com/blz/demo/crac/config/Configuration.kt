package br.com.blz.demo.crac.config

import org.springframework.beans.factory.annotation.Value
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
class Configuration {

    @Value("\${DB_PWD:}")
    val dbPwd: String? = null

    @Bean
    fun dbPwd(): String? {
        return dbPwd
    }
}
