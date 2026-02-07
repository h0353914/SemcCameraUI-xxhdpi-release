package com.sonyericsson.android.camera.debug;

import android.os.Build;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: DebugParameterUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 11})
final class DebugParameterUtils$isUserBuild$2 extends Lambda implements Function0<Boolean> {
    public static final DebugParameterUtils$isUserBuild$2 INSTANCE = new DebugParameterUtils$isUserBuild$2();

    DebugParameterUtils$isUserBuild$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Boolean invoke() {
        return Boolean.valueOf(invoke2());
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final boolean invoke2() {
        String str = Build.TYPE;
        Intrinsics.checkExpressionValueIsNotNull(str, "Build.TYPE");
        Locale locale = Locale.ENGLISH;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.ENGLISH");
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return Intrinsics.areEqual(lowerCase, "user");
    }
}
