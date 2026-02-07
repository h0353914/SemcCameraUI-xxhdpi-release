package android.arch.lifecycle;

import android.support.annotation.Nullable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class ClassesInfoCache {
    private static final int CALL_TYPE_NO_ARG = 0;
    private static final int CALL_TYPE_PROVIDER = 1;
    private static final int CALL_TYPE_PROVIDER_WITH_EVENT = 2;
    static ClassesInfoCache sInstance = new ClassesInfoCache();
    private final Map<Class, ClassesInfoCache$CallbackInfo> mCallbackMap = new HashMap();
    private final Map<Class, Boolean> mHasLifecycleMethods = new HashMap();

    ClassesInfoCache() {
    }

    boolean hasLifecycleMethods(Class cls) {
        if (this.mHasLifecycleMethods.containsKey(cls)) {
            return this.mHasLifecycleMethods.get(cls).booleanValue();
        }
        Method[] declaredMethods = getDeclaredMethods(cls);
        for (Method method : declaredMethods) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                createInfo(cls, declaredMethods);
                return true;
            }
        }
        this.mHasLifecycleMethods.put(cls, false);
        return false;
    }

    private Method[] getDeclaredMethods(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    ClassesInfoCache$CallbackInfo getInfo(Class cls) {
        ClassesInfoCache$CallbackInfo classesInfoCache$CallbackInfo = this.mCallbackMap.get(cls);
        return classesInfoCache$CallbackInfo != null ? classesInfoCache$CallbackInfo : createInfo(cls, null);
    }

    private void verifyAndPutHandler(Map<ClassesInfoCache$MethodReference, Lifecycle$Event> map, ClassesInfoCache$MethodReference classesInfoCache$MethodReference, Lifecycle$Event lifecycle$Event, Class cls) {
        Lifecycle$Event lifecycle$Event2 = map.get(classesInfoCache$MethodReference);
        if (lifecycle$Event2 == null || lifecycle$Event == lifecycle$Event2) {
            if (lifecycle$Event2 == null) {
                map.put(classesInfoCache$MethodReference, lifecycle$Event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + classesInfoCache$MethodReference.mMethod.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + lifecycle$Event2 + ", new value " + lifecycle$Event);
    }

    private ClassesInfoCache$CallbackInfo createInfo(Class cls, @Nullable Method[] methodArr) {
        int i;
        ClassesInfoCache$CallbackInfo info;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (info = getInfo(superclass)) != null) {
            map.putAll(info.mHandlerToEvent);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map$Entry<ClassesInfoCache$MethodReference, Lifecycle$Event> map$Entry : getInfo(cls2).mHandlerToEvent.entrySet()) {
                verifyAndPutHandler(map, map$Entry.getKey(), map$Entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = getDeclaredMethods(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(LifecycleOwner.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Lifecycle$Event lifecycle$EventValue = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle$Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (lifecycle$EventValue != Lifecycle$Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                verifyAndPutHandler(map, new ClassesInfoCache$MethodReference(i, method), lifecycle$EventValue, cls);
                z = true;
            }
        }
        ClassesInfoCache$CallbackInfo classesInfoCache$CallbackInfo = new ClassesInfoCache$CallbackInfo(map);
        this.mCallbackMap.put(cls, classesInfoCache$CallbackInfo);
        this.mHasLifecycleMethods.put(cls, Boolean.valueOf(z));
        return classesInfoCache$CallbackInfo;
    }
}
