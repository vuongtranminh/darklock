//package com.tranminhvuong.darklock.configuration;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.annotation.Order;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//@Configuration
//@EnableWebSecurity
//@Order(1)
//public class AdminSecureConfiguration extends WebSecurityConfigurerAdapter {
//
//	@Autowired
//	private UserDetailsService userDetailsService;
//
//	@Override
//	protected void configure(final HttpSecurity http) throws Exception {
//		http.csrf().disable().authorizeRequests()
//
//				.antMatchers("/css/**", "/js/**", "/images/**", "/upload/**").permitAll()
//
//				.antMatchers("/admin/**").hasAnyAuthority("ADMIN", "EDITOR").antMatchers("/admin/delete/**")
//				.hasAuthority("ADMIN")
//
//				.and().rememberMe().key("uniqueAndSecret").rememberMeParameter("remember_admin")
//				.rememberMeCookieName("rememberloginadmin").tokenValiditySeconds(30 * 24 * 60 * 60)
//
//				.and()
//
//				.formLogin().loginPage("/admin/login").loginProcessingUrl("/admin_login")
//				.defaultSuccessUrl("/admin/index", true).failureUrl("/admin/login?login_error=true").permitAll()
//				.usernameParameter("username").passwordParameter("password")
//
//				.and()
//
//				.logout().logoutUrl("/admin/logout").logoutSuccessUrl("/home").invalidateHttpSession(true)
//				.deleteCookies("JSESSIONID").permitAll();
//	}
//
//	@Autowired
//	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder(4));
//	}
//
//}
