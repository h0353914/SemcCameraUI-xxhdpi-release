package com.sonyericsson.android.camera.view.hint;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.PriorityBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
class HintTextViewController$BlockingFiloContentQueue extends PriorityBlockingQueue<HintTextContent> {
    private static final Map<HintTextContent, Long> sSequentialIndexMap = new LinkedHashMap();
    private long mCount;

    static /* synthetic */ Map access$200() {
        return sSequentialIndexMap;
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
    public /* bridge */ /* synthetic */ boolean offer(Object obj) {
        return offer((HintTextContent) obj);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    public /* bridge */ /* synthetic */ Object poll() {
        return poll();
    }

    public HintTextViewController$BlockingFiloContentQueue() {
        super(2, new HintTextViewController$BlockingFiloContentQueue$1());
        sSequentialIndexMap.clear();
    }

    public boolean offer(HintTextContent hintTextContent) {
        Map<HintTextContent, Long> map = sSequentialIndexMap;
        long j = this.mCount;
        this.mCount = 1 + j;
        map.put(hintTextContent, Long.valueOf(j));
        return super.offer(hintTextContent);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    public HintTextContent poll() {
        HintTextContent hintTextContent = (HintTextContent) super.poll();
        sSequentialIndexMap.remove(hintTextContent);
        return hintTextContent;
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        super.clear();
        sSequentialIndexMap.clear();
        this.mCount = 0L;
    }
}
