package android.support.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
public @interface RequiresPermission$Read {
    RequiresPermission value() default @RequiresPermission;
}
