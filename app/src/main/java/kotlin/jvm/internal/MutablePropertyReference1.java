package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty$Setter;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty1$Setter;
import kotlin.reflect.KProperty$Getter;
import kotlin.reflect.KProperty1$Getter;

/* JADX INFO: loaded from: classes.dex */
public abstract class MutablePropertyReference1 extends MutablePropertyReference implements KMutableProperty1 {
    @Override // kotlin.reflect.KProperty
    public /* bridge */ /* synthetic */ KProperty$Getter getGetter() {
        return getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public /* bridge */ /* synthetic */ KMutableProperty$Setter getSetter() {
        return getSetter();
    }

    public MutablePropertyReference1() {
    }

    @SinceKotlin(version = "1.1")
    public MutablePropertyReference1(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.mutableProperty1(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty1$Getter getGetter() {
        return ((KMutableProperty1) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public KMutableProperty1$Setter getSetter() {
        return ((KMutableProperty1) getReflected()).getSetter();
    }

    @Override // kotlin.reflect.KProperty1
    @SinceKotlin(version = "1.1")
    public Object getDelegate(Object obj) {
        return ((KMutableProperty1) getReflected()).getDelegate(obj);
    }
}
