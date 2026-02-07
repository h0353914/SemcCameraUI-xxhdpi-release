package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty$Setter;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KMutableProperty2$Setter;
import kotlin.reflect.KProperty$Getter;
import kotlin.reflect.KProperty2$Getter;

/* JADX INFO: loaded from: classes.dex */
public abstract class MutablePropertyReference2 extends MutablePropertyReference implements KMutableProperty2 {
    @Override // kotlin.reflect.KProperty
    public /* bridge */ /* synthetic */ KProperty$Getter getGetter() {
        return getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public /* bridge */ /* synthetic */ KMutableProperty$Setter getSetter() {
        return getSetter();
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.mutableProperty2(this);
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty2$Getter getGetter() {
        return ((KMutableProperty2) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public KMutableProperty2$Setter getSetter() {
        return ((KMutableProperty2) getReflected()).getSetter();
    }

    @Override // kotlin.reflect.KProperty2
    @SinceKotlin(version = "1.1")
    public Object getDelegate(Object obj, Object obj2) {
        return ((KMutableProperty2) getReflected()).getDelegate(obj, obj2);
    }
}
