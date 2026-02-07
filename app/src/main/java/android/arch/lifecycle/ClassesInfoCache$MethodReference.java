package android.arch.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class ClassesInfoCache$MethodReference {
    final int mCallType;
    final Method mMethod;

    ClassesInfoCache$MethodReference(int i, Method method) {
        this.mCallType = i;
        this.mMethod = method;
        this.mMethod.setAccessible(true);
    }

    void invokeCallback(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event, Object obj) {
        try {
            switch (this.mCallType) {
                case 0:
                    this.mMethod.invoke(obj, new Object[0]);
                    return;
                case 1:
                    this.mMethod.invoke(obj, lifecycleOwner);
                    return;
                case 2:
                    this.mMethod.invoke(obj, lifecycleOwner, lifecycle$Event);
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException("Failed to call observer method", e2.getCause());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ClassesInfoCache$MethodReference classesInfoCache$MethodReference = (ClassesInfoCache$MethodReference) obj;
        return this.mCallType == classesInfoCache$MethodReference.mCallType && this.mMethod.getName().equals(classesInfoCache$MethodReference.mMethod.getName());
    }

    public int hashCode() {
        return (31 * this.mCallType) + this.mMethod.getName().hashCode();
    }
}
