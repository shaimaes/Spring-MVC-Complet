package fr.formation.inti;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

@Configuration
/*active la configuration Spring MVC par défaut et 
 * enregistre les composants d'infrastructure Spring MVC 
 * attendus par DispatcherServlet.     
*/
@EnableWebMvc

public class WebMvcConfig implements WebMvcConfigurer {

	private static final Charset UTF8 = Charset.forName("UTF-8");

	// Config UTF-8 Encoding.
	// @Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		StringHttpMessageConverter stringConverter = new StringHttpMessageConverter();
		stringConverter.setSupportedMediaTypes(Arrays.asList(new MediaType("text", "plain", UTF8)));
		converters.add(stringConverter);
		System.out.println("WebmvcConf_confMessgconverter");

		// Add other converters ...
	}

	// Static Resource Config
	// equivalents for <mvc:resources/> tags
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("ressources/css/").setCachePeriod(31556926);
		registry.addResourceHandler("/img/**").addResourceLocations("ressources/img/").setCachePeriod(31556926);
		registry.addResourceHandler("/js/**").addResourceLocations("ressources/js/").setCachePeriod(31556926);
		System.out.println("WebmvcConf_addResource");
	}

	// Equivalent for <mvc:default-servlet-handler/> tag
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
		System.out.println("WebmvcConf_confDefaultservletHand");
	}

	@Bean(name = "messageSource")
	public MessageSource getMessageResource() {
		ReloadableResourceBundleMessageSource messageResource = new ReloadableResourceBundleMessageSource();
		messageResource.setBasename("classpath:message");
		messageResource.setDefaultEncoding("UTF-8");

		return messageResource;
	}
	

	@Bean
	public LocaleResolver localeResolver() {
		CookieLocaleResolver resolver = new CookieLocaleResolver();
		resolver.setDefaultLocale(new Locale("en"));
		resolver.setCookieName("myLocaleCookie");
		resolver.setCookieMaxAge(4800);
		return resolver;
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("mylocale");
		registry.addInterceptor(interceptor);
	}
	
	
}
