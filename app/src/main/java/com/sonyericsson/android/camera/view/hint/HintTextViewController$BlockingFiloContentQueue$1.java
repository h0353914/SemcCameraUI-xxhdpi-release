package com.sonyericsson.android.camera.view.hint;

import java.util.Comparator;

class HintTextViewController$BlockingFiloContentQueue$1 implements Comparator<HintTextContent> {
    HintTextViewController$BlockingFiloContentQueue$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(HintTextContent hintTextContent, HintTextContent hintTextContent2) {
        return compare2(hintTextContent, hintTextContent2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(HintTextContent hintTextContent, HintTextContent hintTextContent2) {
        int iCompareTo = hintTextContent.getPriority().compareTo(hintTextContent2.getPriority());
        return (iCompareTo != 0 || hintTextContent.equals(hintTextContent2)) ? iCompareTo : ((Long) HintTextViewController$BlockingFiloContentQueue.access$200().getOrDefault(hintTextContent, Long.MIN_VALUE)).longValue() < ((Long) HintTextViewController$BlockingFiloContentQueue.access$200().getOrDefault(hintTextContent2, Long.MIN_VALUE)).longValue() ? 1 : -1;
    }
}
