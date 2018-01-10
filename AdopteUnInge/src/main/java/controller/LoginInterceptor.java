package controller;

import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.ActionInvocation;
import java.util.Map;
public class LoginInterceptor implements Interceptor{

public LoginInterceptor(){};

    @Override
    public void destroy() {
    }

    @Override
    public void init() {
    }

    @Override
    public String intercept(ActionInvocation invocation) throws Exception
    {
        Map<String, Object> sessionAttributes = invocation.getInvocationContext().getSession();
        if (sessionAttributes.isEmpty() || sessionAttributes == null || sessionAttributes.get("user") == null || (Boolean)sessionAttributes.get("login") != true) {
                return "login";
        } else {
          return invocation.invoke();
        }
    }
}
