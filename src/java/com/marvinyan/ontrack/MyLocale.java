package com.marvinyan.ontrack;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Locale;

/**
 * Created by marvinyan on 4/10/2017.
 */
public class MyLocale extends SimpleTagSupport {
    private Locale locale;

    public void doTag() throws IOException {
        PageContext pc = (PageContext) getJspContext();
        JspWriter out = pc.getOut();

        out.println("<p>My country is: " + locale.getDisplayCountry() + "</p>");
    }

    // <cse336:locale country="us" /> will call setCountry("us")
    public void setCountry(String country) {
        locale = new Locale("en", country);
    }
}
