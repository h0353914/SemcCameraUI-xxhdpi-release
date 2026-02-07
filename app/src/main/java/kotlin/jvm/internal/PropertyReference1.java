package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty$Getter;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty1$Getter;

/* JADX INFO: loaded from: classes.dex */
public abstract class PropertyReference1 extends PropertyReference implements KProperty1 {
    @Override // kotlin.reflect.KProperty
    public /* bridge */ /* synthetic */ KProperty$Getter getGetter() {
        return getGetter();
    }

    public PropertyReference1() {
    }

    @SinceKotlin(version = "1.1")
    public PropertyReference1(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.property1(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty1$Getter getGetter() {
        return ((KProperty1) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KProperty1
    @SinceKotlin(version = "1.1")
    public Object getDelegate(Object obj) {
        return ((KProperty1) getReflected()).getDelegate(obj);
    }
}
