package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build$VERSION;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class FragmentTransition {
    private static final int[] INVERSE_OPS = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8};
    private static final FragmentTransitionImpl PLATFORM_IMPL;
    private static final FragmentTransitionImpl SUPPORT_IMPL;

    static {
        PLATFORM_IMPL = Build$VERSION.SDK_INT >= 21 ? new FragmentTransitionCompat21() : null;
        SUPPORT_IMPL = resolveSupportImpl();
    }

    private static FragmentTransitionImpl resolveSupportImpl() {
        try {
            return (FragmentTransitionImpl) Class.forName("android.support.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static void startTransitions(FragmentManagerImpl fragmentManagerImpl, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (fragmentManagerImpl.mCurState < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            BackStackRecord backStackRecord = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                calculatePopFragments(backStackRecord, sparseArray, z);
            } else {
                calculateFragments(backStackRecord, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(fragmentManagerImpl.mHost.getContext());
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt = sparseArray.keyAt(i4);
                ArrayMap<String, String> arrayMapCalculateNameOverrides = calculateNameOverrides(iKeyAt, arrayList, arrayList2, i, i2);
                FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition = (FragmentTransition$FragmentContainerTransition) sparseArray.valueAt(i4);
                if (z) {
                    configureTransitionsReordered(fragmentManagerImpl, iKeyAt, fragmentTransition$FragmentContainerTransition, view, arrayMapCalculateNameOverrides);
                } else {
                    configureTransitionsOrdered(fragmentManagerImpl, iKeyAt, fragmentTransition$FragmentContainerTransition, view, arrayMapCalculateNameOverrides);
                }
            }
        }
    }

    private static ArrayMap<String, String> calculateNameOverrides(int i, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            BackStackRecord backStackRecord = arrayList.get(i4);
            if (backStackRecord.interactsWith(i)) {
                boolean zBooleanValue = arrayList2.get(i4).booleanValue();
                if (backStackRecord.mSharedElementSourceNames != null) {
                    int size = backStackRecord.mSharedElementSourceNames.size();
                    if (zBooleanValue) {
                        arrayList3 = backStackRecord.mSharedElementSourceNames;
                        arrayList4 = backStackRecord.mSharedElementTargetNames;
                    } else {
                        ArrayList<String> arrayList5 = backStackRecord.mSharedElementSourceNames;
                        arrayList3 = backStackRecord.mSharedElementTargetNames;
                        arrayList4 = arrayList5;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String strRemove = arrayMap.remove(str2);
                        if (strRemove != null) {
                            arrayMap.put(str, strRemove);
                        } else {
                            arrayMap.put(str, str2);
                        }
                    }
                }
            }
        }
        return arrayMap;
    }

    private static void configureTransitionsReordered(FragmentManagerImpl fragmentManagerImpl, int i, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition, View view, ArrayMap<String, String> arrayMap) {
        Fragment fragment;
        Fragment fragment2;
        FragmentTransitionImpl fragmentTransitionImplChooseImpl;
        Object obj;
        ViewGroup viewGroup = fragmentManagerImpl.mContainer.onHasView() ? (ViewGroup) fragmentManagerImpl.mContainer.onFindViewById(i) : null;
        if (viewGroup == null || (fragmentTransitionImplChooseImpl = chooseImpl((fragment2 = fragmentTransition$FragmentContainerTransition.firstOut), (fragment = fragmentTransition$FragmentContainerTransition.lastIn))) == null) {
            return;
        }
        boolean z = fragmentTransition$FragmentContainerTransition.lastInIsPop;
        boolean z2 = fragmentTransition$FragmentContainerTransition.firstOutIsPop;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object enterTransition = getEnterTransition(fragmentTransitionImplChooseImpl, fragment, z);
        Object exitTransition = getExitTransition(fragmentTransitionImplChooseImpl, fragment2, z2);
        Object objConfigureSharedElementsReordered = configureSharedElementsReordered(fragmentTransitionImplChooseImpl, viewGroup, view, arrayMap, fragmentTransition$FragmentContainerTransition, arrayList2, arrayList, enterTransition, exitTransition);
        if (enterTransition == null && objConfigureSharedElementsReordered == null) {
            obj = exitTransition;
            if (obj == null) {
                return;
            }
        } else {
            obj = exitTransition;
        }
        ArrayList<View> arrayListConfigureEnteringExitingViews = configureEnteringExitingViews(fragmentTransitionImplChooseImpl, obj, fragment2, arrayList2, view);
        ArrayList<View> arrayListConfigureEnteringExitingViews2 = configureEnteringExitingViews(fragmentTransitionImplChooseImpl, enterTransition, fragment, arrayList, view);
        setViewVisibility(arrayListConfigureEnteringExitingViews2, 4);
        Object objMergeTransitions = mergeTransitions(fragmentTransitionImplChooseImpl, enterTransition, obj, objConfigureSharedElementsReordered, fragment, z);
        if (objMergeTransitions != null) {
            replaceHide(fragmentTransitionImplChooseImpl, obj, fragment2, arrayListConfigureEnteringExitingViews);
            ArrayList<String> arrayListPrepareSetNameOverridesReordered = fragmentTransitionImplChooseImpl.prepareSetNameOverridesReordered(arrayList);
            fragmentTransitionImplChooseImpl.scheduleRemoveTargets(objMergeTransitions, enterTransition, arrayListConfigureEnteringExitingViews2, obj, arrayListConfigureEnteringExitingViews, objConfigureSharedElementsReordered, arrayList);
            fragmentTransitionImplChooseImpl.beginDelayedTransition(viewGroup, objMergeTransitions);
            fragmentTransitionImplChooseImpl.setNameOverridesReordered(viewGroup, arrayList2, arrayList, arrayListPrepareSetNameOverridesReordered, arrayMap);
            setViewVisibility(arrayListConfigureEnteringExitingViews2, 0);
            fragmentTransitionImplChooseImpl.swapSharedElementTargets(objConfigureSharedElementsReordered, arrayList2, arrayList);
        }
    }

    private static void replaceHide(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            fragmentTransitionImpl.scheduleHideFragmentView(obj, fragment.getView(), arrayList);
            OneShotPreDrawListener.add(fragment.mContainer, new FragmentTransition$1(arrayList));
        }
    }

    private static void configureTransitionsOrdered(FragmentManagerImpl fragmentManagerImpl, int i, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition, View view, ArrayMap<String, String> arrayMap) {
        Fragment fragment;
        Fragment fragment2;
        FragmentTransitionImpl fragmentTransitionImplChooseImpl;
        Object obj;
        ViewGroup viewGroup = fragmentManagerImpl.mContainer.onHasView() ? (ViewGroup) fragmentManagerImpl.mContainer.onFindViewById(i) : null;
        if (viewGroup == null || (fragmentTransitionImplChooseImpl = chooseImpl((fragment2 = fragmentTransition$FragmentContainerTransition.firstOut), (fragment = fragmentTransition$FragmentContainerTransition.lastIn))) == null) {
            return;
        }
        boolean z = fragmentTransition$FragmentContainerTransition.lastInIsPop;
        boolean z2 = fragmentTransition$FragmentContainerTransition.firstOutIsPop;
        Object enterTransition = getEnterTransition(fragmentTransitionImplChooseImpl, fragment, z);
        Object exitTransition = getExitTransition(fragmentTransitionImplChooseImpl, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objConfigureSharedElementsOrdered = configureSharedElementsOrdered(fragmentTransitionImplChooseImpl, viewGroup, view, arrayMap, fragmentTransition$FragmentContainerTransition, arrayList, arrayList2, enterTransition, exitTransition);
        if (enterTransition == null && objConfigureSharedElementsOrdered == null) {
            obj = exitTransition;
            if (obj == null) {
                return;
            }
        } else {
            obj = exitTransition;
        }
        ArrayList<View> arrayListConfigureEnteringExitingViews = configureEnteringExitingViews(fragmentTransitionImplChooseImpl, obj, fragment2, arrayList, view);
        Object obj2 = (arrayListConfigureEnteringExitingViews == null || arrayListConfigureEnteringExitingViews.isEmpty()) ? null : obj;
        fragmentTransitionImplChooseImpl.addTarget(enterTransition, view);
        Object objMergeTransitions = mergeTransitions(fragmentTransitionImplChooseImpl, enterTransition, obj2, objConfigureSharedElementsOrdered, fragment, fragmentTransition$FragmentContainerTransition.lastInIsPop);
        if (objMergeTransitions != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            fragmentTransitionImplChooseImpl.scheduleRemoveTargets(objMergeTransitions, enterTransition, arrayList3, obj2, arrayListConfigureEnteringExitingViews, objConfigureSharedElementsOrdered, arrayList2);
            scheduleTargetChange(fragmentTransitionImplChooseImpl, viewGroup, fragment, view, arrayList2, enterTransition, arrayList3, obj2, arrayListConfigureEnteringExitingViews);
            fragmentTransitionImplChooseImpl.setNameOverridesOrdered(viewGroup, arrayList2, arrayMap);
            fragmentTransitionImplChooseImpl.beginDelayedTransition(viewGroup, objMergeTransitions);
            fragmentTransitionImplChooseImpl.scheduleNameReset(viewGroup, arrayList2, arrayMap);
        }
    }

    private static void scheduleTargetChange(FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        OneShotPreDrawListener.add(viewGroup, new FragmentTransition$2(obj, fragmentTransitionImpl, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    private static FragmentTransitionImpl chooseImpl(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (PLATFORM_IMPL != null && canHandleAll(PLATFORM_IMPL, arrayList)) {
            return PLATFORM_IMPL;
        }
        if (SUPPORT_IMPL != null && canHandleAll(SUPPORT_IMPL, arrayList)) {
            return SUPPORT_IMPL;
        }
        if (PLATFORM_IMPL == null && SUPPORT_IMPL == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static boolean canHandleAll(FragmentTransitionImpl fragmentTransitionImpl, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!fragmentTransitionImpl.canHandle(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static Object getSharedElementTransition(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, Fragment fragment2, boolean z) {
        Object sharedElementEnterTransition;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z) {
            sharedElementEnterTransition = fragment2.getSharedElementReturnTransition();
        } else {
            sharedElementEnterTransition = fragment.getSharedElementEnterTransition();
        }
        return fragmentTransitionImpl.wrapTransitionInSet(fragmentTransitionImpl.cloneTransition(sharedElementEnterTransition));
    }

    private static Object getEnterTransition(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z) {
        Object enterTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            enterTransition = fragment.getReenterTransition();
        } else {
            enterTransition = fragment.getEnterTransition();
        }
        return fragmentTransitionImpl.cloneTransition(enterTransition);
    }

    private static Object getExitTransition(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z) {
        Object exitTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            exitTransition = fragment.getReturnTransition();
        } else {
            exitTransition = fragment.getExitTransition();
        }
        return fragmentTransitionImpl.cloneTransition(exitTransition);
    }

    private static Object configureSharedElementsReordered(FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, View view, ArrayMap<String, String> arrayMap, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = fragmentTransition$FragmentContainerTransition.lastIn;
        Fragment fragment2 = fragmentTransition$FragmentContainerTransition.firstOut;
        if (fragment != null) {
            fragment.getView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = fragmentTransition$FragmentContainerTransition.lastInIsPop;
        Object sharedElementTransition = arrayMap.isEmpty() ? null : getSharedElementTransition(fragmentTransitionImpl, fragment, fragment2, z);
        ArrayMap<String, View> arrayMapCaptureOutSharedElements = captureOutSharedElements(fragmentTransitionImpl, arrayMap, sharedElementTransition, fragmentTransition$FragmentContainerTransition);
        ArrayMap<String, View> arrayMapCaptureInSharedElements = captureInSharedElements(fragmentTransitionImpl, arrayMap, sharedElementTransition, fragmentTransition$FragmentContainerTransition);
        if (arrayMap.isEmpty()) {
            if (arrayMapCaptureOutSharedElements != null) {
                arrayMapCaptureOutSharedElements.clear();
            }
            if (arrayMapCaptureInSharedElements != null) {
                arrayMapCaptureInSharedElements.clear();
            }
            obj3 = null;
        } else {
            addSharedElementsWithMatchingNames(arrayList, arrayMapCaptureOutSharedElements, arrayMap.keySet());
            addSharedElementsWithMatchingNames(arrayList2, arrayMapCaptureInSharedElements, arrayMap.values());
            obj3 = sharedElementTransition;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        callSharedElementStartEnd(fragment, fragment2, z, arrayMapCaptureOutSharedElements, true);
        if (obj3 != null) {
            arrayList2.add(view);
            fragmentTransitionImpl.setSharedElementTargets(obj3, view, arrayList);
            setOutEpicenter(fragmentTransitionImpl, obj3, obj2, arrayMapCaptureOutSharedElements, fragmentTransition$FragmentContainerTransition.firstOutIsPop, fragmentTransition$FragmentContainerTransition.firstOutTransaction);
            Rect rect2 = new Rect();
            View inEpicenterView = getInEpicenterView(arrayMapCaptureInSharedElements, fragmentTransition$FragmentContainerTransition, obj, z);
            if (inEpicenterView != null) {
                fragmentTransitionImpl.setEpicenter(obj, rect2);
            }
            rect = rect2;
            view2 = inEpicenterView;
        } else {
            view2 = null;
            rect = null;
        }
        OneShotPreDrawListener.add(viewGroup, new FragmentTransition$3(fragment, fragment2, z, arrayMapCaptureInSharedElements, view2, fragmentTransitionImpl, rect));
        return obj3;
    }

    private static void addSharedElementsWithMatchingNames(ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, Collection<String> collection) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View viewValueAt = arrayMap.valueAt(size);
            if (collection.contains(ViewCompat.getTransitionName(viewValueAt))) {
                arrayList.add(viewValueAt);
            }
        }
    }

    private static Object configureSharedElementsOrdered(FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, View view, ArrayMap<String, String> arrayMap, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object sharedElementTransition;
        ArrayMap<String, String> arrayMap2;
        Object obj3;
        Rect rect;
        Fragment fragment = fragmentTransition$FragmentContainerTransition.lastIn;
        Fragment fragment2 = fragmentTransition$FragmentContainerTransition.firstOut;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = fragmentTransition$FragmentContainerTransition.lastInIsPop;
        if (arrayMap.isEmpty()) {
            arrayMap2 = arrayMap;
            sharedElementTransition = null;
        } else {
            sharedElementTransition = getSharedElementTransition(fragmentTransitionImpl, fragment, fragment2, z);
            arrayMap2 = arrayMap;
        }
        ArrayMap<String, View> arrayMapCaptureOutSharedElements = captureOutSharedElements(fragmentTransitionImpl, arrayMap2, sharedElementTransition, fragmentTransition$FragmentContainerTransition);
        if (arrayMap.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(arrayMapCaptureOutSharedElements.values());
            obj3 = sharedElementTransition;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        callSharedElementStartEnd(fragment, fragment2, z, arrayMapCaptureOutSharedElements, true);
        if (obj3 != null) {
            rect = new Rect();
            fragmentTransitionImpl.setSharedElementTargets(obj3, view, arrayList);
            setOutEpicenter(fragmentTransitionImpl, obj3, obj2, arrayMapCaptureOutSharedElements, fragmentTransition$FragmentContainerTransition.firstOutIsPop, fragmentTransition$FragmentContainerTransition.firstOutTransaction);
            if (obj != null) {
                fragmentTransitionImpl.setEpicenter(obj, rect);
            }
        } else {
            rect = null;
        }
        OneShotPreDrawListener.add(viewGroup, new FragmentTransition$4(fragmentTransitionImpl, arrayMap2, obj3, fragmentTransition$FragmentContainerTransition, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return obj3;
    }

    private static ArrayMap<String, View> captureOutSharedElements(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition) {
        SharedElementCallback exitTransitionCallback;
        ArrayList<String> arrayList;
        if (arrayMap.isEmpty() || obj == null) {
            arrayMap.clear();
            return null;
        }
        Fragment fragment = fragmentTransition$FragmentContainerTransition.firstOut;
        ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
        fragmentTransitionImpl.findNamedViews(arrayMap2, fragment.getView());
        BackStackRecord backStackRecord = fragmentTransition$FragmentContainerTransition.firstOutTransaction;
        if (fragmentTransition$FragmentContainerTransition.firstOutIsPop) {
            exitTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = backStackRecord.mSharedElementTargetNames;
        } else {
            exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = backStackRecord.mSharedElementSourceNames;
        }
        arrayMap2.retainAll(arrayList);
        if (exitTransitionCallback != null) {
            exitTransitionCallback.onMapSharedElements(arrayList, arrayMap2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = arrayMap2.get(str);
                if (view == null) {
                    arrayMap.remove(str);
                } else if (!str.equals(ViewCompat.getTransitionName(view))) {
                    arrayMap.put(ViewCompat.getTransitionName(view), arrayMap.remove(str));
                }
            }
        } else {
            arrayMap.retainAll(arrayMap2.keySet());
        }
        return arrayMap2;
    }

    static ArrayMap<String, View> captureInSharedElements(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition) {
        SharedElementCallback enterTransitionCallback;
        ArrayList<String> arrayList;
        String strFindKeyForValue;
        Fragment fragment = fragmentTransition$FragmentContainerTransition.lastIn;
        View view = fragment.getView();
        if (arrayMap.isEmpty() || obj == null || view == null) {
            arrayMap.clear();
            return null;
        }
        ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
        fragmentTransitionImpl.findNamedViews(arrayMap2, view);
        BackStackRecord backStackRecord = fragmentTransition$FragmentContainerTransition.lastInTransaction;
        if (fragmentTransition$FragmentContainerTransition.lastInIsPop) {
            enterTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = backStackRecord.mSharedElementSourceNames;
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = backStackRecord.mSharedElementTargetNames;
        }
        if (arrayList != null) {
            arrayMap2.retainAll(arrayList);
            arrayMap2.retainAll(arrayMap.values());
        }
        if (enterTransitionCallback != null) {
            enterTransitionCallback.onMapSharedElements(arrayList, arrayMap2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = arrayMap2.get(str);
                if (view2 == null) {
                    String strFindKeyForValue2 = findKeyForValue(arrayMap, str);
                    if (strFindKeyForValue2 != null) {
                        arrayMap.remove(strFindKeyForValue2);
                    }
                } else if (!str.equals(ViewCompat.getTransitionName(view2)) && (strFindKeyForValue = findKeyForValue(arrayMap, str)) != null) {
                    arrayMap.put(strFindKeyForValue, ViewCompat.getTransitionName(view2));
                }
            }
        } else {
            retainValues(arrayMap, arrayMap2);
        }
        return arrayMap2;
    }

    private static String findKeyForValue(ArrayMap<String, String> arrayMap, String str) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(arrayMap.valueAt(i))) {
                return arrayMap.keyAt(i);
            }
        }
        return null;
    }

    static View getInEpicenterView(ArrayMap<String, View> arrayMap, FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition, Object obj, boolean z) {
        String str;
        BackStackRecord backStackRecord = fragmentTransition$FragmentContainerTransition.lastInTransaction;
        if (obj == null || arrayMap == null || backStackRecord.mSharedElementSourceNames == null || backStackRecord.mSharedElementSourceNames.isEmpty()) {
            return null;
        }
        if (z) {
            str = backStackRecord.mSharedElementSourceNames.get(0);
        } else {
            str = backStackRecord.mSharedElementTargetNames.get(0);
        }
        return arrayMap.get(str);
    }

    private static void setOutEpicenter(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, ArrayMap<String, View> arrayMap, boolean z, BackStackRecord backStackRecord) {
        String str;
        if (backStackRecord.mSharedElementSourceNames == null || backStackRecord.mSharedElementSourceNames.isEmpty()) {
            return;
        }
        if (z) {
            str = backStackRecord.mSharedElementTargetNames.get(0);
        } else {
            str = backStackRecord.mSharedElementSourceNames.get(0);
        }
        View view = arrayMap.get(str);
        fragmentTransitionImpl.setEpicenter(obj, view);
        if (obj2 != null) {
            fragmentTransitionImpl.setEpicenter(obj2, view);
        }
    }

    private static void retainValues(ArrayMap<String, String> arrayMap, ArrayMap<String, View> arrayMap2) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            if (!arrayMap2.containsKey(arrayMap.valueAt(size))) {
                arrayMap.removeAt(size);
            }
        }
    }

    static void callSharedElementStartEnd(Fragment fragment, Fragment fragment2, boolean z, ArrayMap<String, View> arrayMap, boolean z2) {
        SharedElementCallback enterTransitionCallback;
        if (z) {
            enterTransitionCallback = fragment2.getEnterTransitionCallback();
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
        }
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayMap == null ? 0 : arrayMap.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(arrayMap.keyAt(i));
                arrayList.add(arrayMap.valueAt(i));
            }
            if (z2) {
                enterTransitionCallback.onSharedElementStart(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.onSharedElementEnd(arrayList2, arrayList, null);
            }
        }
    }

    static ArrayList<View> configureEnteringExitingViews(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            fragmentTransitionImpl.captureTransitioningViews(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        fragmentTransitionImpl.addTargets(obj, arrayList2);
        return arrayList2;
    }

    static void setViewVisibility(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    private static Object mergeTransitions(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean allowEnterTransitionOverlap;
        if (obj == null || obj2 == null || fragment == null) {
            allowEnterTransitionOverlap = true;
        } else if (z) {
            allowEnterTransitionOverlap = fragment.getAllowReturnTransitionOverlap();
        } else {
            allowEnterTransitionOverlap = fragment.getAllowEnterTransitionOverlap();
        }
        if (allowEnterTransitionOverlap) {
            return fragmentTransitionImpl.mergeTransitionsTogether(obj2, obj, obj3);
        }
        return fragmentTransitionImpl.mergeTransitionsInSequence(obj2, obj, obj3);
    }

    public static void calculateFragments(BackStackRecord backStackRecord, SparseArray<FragmentTransition$FragmentContainerTransition> sparseArray, boolean z) {
        int size = backStackRecord.mOps.size();
        for (int i = 0; i < size; i++) {
            addToFirstInLastOut(backStackRecord, backStackRecord.mOps.get(i), sparseArray, false, z);
        }
    }

    public static void calculatePopFragments(BackStackRecord backStackRecord, SparseArray<FragmentTransition$FragmentContainerTransition> sparseArray, boolean z) {
        if (backStackRecord.mManager.mContainer.onHasView()) {
            for (int size = backStackRecord.mOps.size() - 1; size >= 0; size--) {
                addToFirstInLastOut(backStackRecord, backStackRecord.mOps.get(size), sparseArray, true, z);
            }
        }
    }

    static boolean supportsTransition() {
        return (PLATFORM_IMPL == null && SUPPORT_IMPL == null) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void addToFirstInLastOut(BackStackRecord backStackRecord, BackStackRecord$Op backStackRecord$Op, SparseArray<FragmentTransition$FragmentContainerTransition> sparseArray, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Fragment fragment = backStackRecord$Op.fragment;
        if (fragment == null || (i = fragment.mContainerId) == 0) {
            return;
        }
        int i2 = z ? INVERSE_OPS[backStackRecord$Op.cmd] : backStackRecord$Op.cmd;
        boolean z7 = false;
        if (i2 != 1) {
            switch (i2) {
                case 3:
                case 6:
                    boolean z8 = !z2 ? !fragment.mAdded || fragment.mHidden : fragment.mAdded || fragment.mView == null || fragment.mView.getVisibility() != 0 || fragment.mPostponedAlpha < 0.0f;
                    z5 = z8;
                    z6 = false;
                    z4 = true;
                    break;
                case 4:
                    if (!z2 ? !fragment.mAdded || fragment.mHidden : !fragment.mHiddenChanged || !fragment.mAdded || !fragment.mHidden) {
                    }
                    z5 = z8;
                    z6 = false;
                    z4 = true;
                    break;
                case 5:
                    if (z2) {
                        z3 = fragment.mHiddenChanged && !fragment.mHidden && fragment.mAdded;
                        z4 = false;
                        z5 = false;
                        z7 = z3;
                        z6 = true;
                    } else {
                        z3 = fragment.mHidden;
                        z4 = false;
                        z5 = false;
                        z7 = z3;
                        z6 = true;
                    }
                    break;
                case 7:
                    if (z2) {
                        z3 = fragment.mIsNewlyAdded;
                        z4 = false;
                        z5 = false;
                        z7 = z3;
                        z6 = true;
                    } else {
                        if (fragment.mAdded || fragment.mHidden) {
                        }
                        z4 = false;
                        z5 = false;
                        z7 = z3;
                        z6 = true;
                    }
                    break;
                default:
                    z6 = false;
                    z4 = false;
                    z5 = false;
                    break;
            }
        }
        FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransitionEnsureContainer = sparseArray.get(i);
        if (z7) {
            fragmentTransition$FragmentContainerTransitionEnsureContainer = ensureContainer(fragmentTransition$FragmentContainerTransitionEnsureContainer, sparseArray, i);
            fragmentTransition$FragmentContainerTransitionEnsureContainer.lastIn = fragment;
            fragmentTransition$FragmentContainerTransitionEnsureContainer.lastInIsPop = z;
            fragmentTransition$FragmentContainerTransitionEnsureContainer.lastInTransaction = backStackRecord;
        }
        FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransitionEnsureContainer2 = fragmentTransition$FragmentContainerTransitionEnsureContainer;
        if (!z2 && z6) {
            if (fragmentTransition$FragmentContainerTransitionEnsureContainer2 != null && fragmentTransition$FragmentContainerTransitionEnsureContainer2.firstOut == fragment) {
                fragmentTransition$FragmentContainerTransitionEnsureContainer2.firstOut = null;
            }
            FragmentManagerImpl fragmentManagerImpl = backStackRecord.mManager;
            if (fragment.mState < 1 && fragmentManagerImpl.mCurState >= 1 && !backStackRecord.mReorderingAllowed) {
                fragmentManagerImpl.makeActive(fragment);
                fragmentManagerImpl.moveToState(fragment, 1, 0, 0, false);
            }
        }
        if (z5 && (fragmentTransition$FragmentContainerTransitionEnsureContainer2 == null || fragmentTransition$FragmentContainerTransitionEnsureContainer2.firstOut == null)) {
            fragmentTransition$FragmentContainerTransitionEnsureContainer2 = ensureContainer(fragmentTransition$FragmentContainerTransitionEnsureContainer2, sparseArray, i);
            fragmentTransition$FragmentContainerTransitionEnsureContainer2.firstOut = fragment;
            fragmentTransition$FragmentContainerTransitionEnsureContainer2.firstOutIsPop = z;
            fragmentTransition$FragmentContainerTransitionEnsureContainer2.firstOutTransaction = backStackRecord;
        }
        if (z2 || !z4 || fragmentTransition$FragmentContainerTransitionEnsureContainer2 == null || fragmentTransition$FragmentContainerTransitionEnsureContainer2.lastIn != fragment) {
            return;
        }
        fragmentTransition$FragmentContainerTransitionEnsureContainer2.lastIn = null;
    }

    private static FragmentTransition$FragmentContainerTransition ensureContainer(FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition, SparseArray<FragmentTransition$FragmentContainerTransition> sparseArray, int i) {
        if (fragmentTransition$FragmentContainerTransition != null) {
            return fragmentTransition$FragmentContainerTransition;
        }
        FragmentTransition$FragmentContainerTransition fragmentTransition$FragmentContainerTransition2 = new FragmentTransition$FragmentContainerTransition();
        sparseArray.put(i, fragmentTransition$FragmentContainerTransition2);
        return fragmentTransition$FragmentContainerTransition2;
    }

    private FragmentTransition() {
    }
}
