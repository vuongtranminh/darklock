package com.tranminhvuong.darklock.taglibs;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PaginationTaglib extends SimpleTagSupport {
	public static int MAX = 9;

	private String uri;
	private int offset;
	private int count;
	private int max = MAX;
	private int steps = MAX;
	private String previous = "Previous";
	private String next = "Next";

	private Writer getWriter() {
		JspWriter out = getJspContext().getOut();
		return out;
	}

	@Override
	public void doTag() throws JspException {
		Writer out = getWriter();

		try {
			/* out.write("<nav aria-label=\"Page navigation example\">"); */
			out.write("<ul class=\"pagination\">");

			if (offset < steps)
				out.write(constructLink(1, previous, "disabled", true));
			else
				out.write(constructLink(offset - steps, previous, null, false));

			for (int itr = 0; itr < count; itr += steps) {
				if (offset == itr)
					out.write(
							constructLink((itr / MAX + 1) - 1 * steps, String.valueOf(itr / MAX + 1), "active", true));
				else
					out.write(constructLink(itr / MAX * steps, String.valueOf(itr / MAX + 1), null, false));
			}

			if (offset + steps >= count)
				out.write(constructLink(offset + steps, next, "disabled", true));
			else
				out.write(constructLink(offset + steps, next, null, false));

			out.write("</ul>");
//			out.write("</nav>");
		} catch (java.io.IOException ex) {
			throw new JspException("Error in Paginator tag", ex);
		}
	}

	private String constructLink(int page, String text, String className, boolean disabled) {
		if(uri.contains("offset=")) {
			uri = uri.substring(0, uri.indexOf("offset="));
		}
		
		StringBuilder link = new StringBuilder("<li");
		link.append(" class=\"page-item ");
		link.append(className == null ? "" : className);
		link.append("\"");
		if (disabled)
			link.append(">").append("<a class='page-link' href=\"#\">" + text + "</a></li>");
		else
			link.append(">")
					.append("<a  class='page-link' href=\"" + uri + (uri.contains("?") ? "" : "?") + "offset=" + page + "\">" + text + "</a></li>");
		return link.toString();
	}

}