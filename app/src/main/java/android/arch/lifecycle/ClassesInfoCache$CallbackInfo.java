package android.arch.lifecycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class ClassesInfoCache$CallbackInfo {
    final Map<Lifecycle$Event, List<ClassesInfoCache$MethodReference>> mEventToHandlers = new HashMap();
    final Map<ClassesInfoCache$MethodReference, Lifecycle$Event> mHandlerToEvent;

    ClassesInfoCache$CallbackInfo(Map<ClassesInfoCache$MethodReference, Lifecycle$Event> map) {
        this.mHandlerToEvent = map;
        for (Map$Entry<ClassesInfoCache$MethodReference, Lifecycle$Event> map$Entry : map.entrySet()) {
            Lifecycle$Event value = map$Entry.getValue();
            List<ClassesInfoCache$MethodReference> arrayList = this.mEventToHandlers.get(value);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mEventToHandlers.put(value, arrayList);
            }
            arrayList.add(map$Entry.getKey());
        }
    }

    void invokeCallbacks(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event, Object obj) {
        invokeMethodsForEvent(this.mEventToHandlers.get(lifecycle$Event), lifecycleOwner, lifecycle$Event, obj);
        invokeMethodsForEvent(this.mEventToHandlers.get(Lifecycle$Event.ON_ANY), lifecycleOwner, lifecycle$Event, obj);
    }

    private static void invokeMethodsForEvent(List<ClassesInfoCache$MethodReference> list, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                list.get(size).invokeCallback(lifecycleOwner, lifecycle$Event, obj);
            }
        }
    }
}
