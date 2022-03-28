package kr.re.aac.common;

import org.apache.commons.lang3.StringUtils;

import java.beans.PropertyEditorSupport;

public class IntPropertyEditor extends PropertyEditorSupport {
    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        if(StringUtils.isBlank(text)) {
            text = "0";
        }

        setValue(Integer.parseInt(text));
    }
}
