package com.google.protobuf.nano;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.CLASS)
public @interface NanoEnumValue {
    boolean keepAsInt() default false;

    boolean legacy() default false;

    Class<?> value();
}
