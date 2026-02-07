package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty$Setter;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty0$Setter;
import kotlin.reflect.KProperty$Getter;
import kotlin.reflect.KProperty0$Getter;

/* JADX INFO: loaded from: classes.dex */
public abstract class MutablePropertyReference0 extends MutablePropertyReference implements KMutableProperty0 {
    @Override // kotlin.reflect.KProperty
    public /* bridge */ /* synthetic */ KProperty$Getter getGetter() {
        return getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public /* bridge */ /* synthetic */ KMutableProperty$Setter getSetter() {
        return getSetter();
    }

    public MutablePropertyReference0() {
    }

    @SinceKotlin(version = "1.1")
    public MutablePropertyReference0(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.mutableProperty0(this);
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }

    @Override // kotlin.reflect.KProperty
    public KProperty0$Getter getGetter() {
        return ((KMutableProperty0) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public KMutableProperty0$Setter getSetter() {
        return ((KMutableProperty0) getReflected()).getSetter();
    }

    @Override // kotlin.reflect.KProperty0
    @SinceKotlin(version = "1.1")
    public Object getDelegate() {
        return ((KMutableProperty0) getReflected()).getDelegate();
    }
}
