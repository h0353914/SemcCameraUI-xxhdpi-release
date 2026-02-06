package com.sonyericsson.android.camera.view.modeselector;

import android.content.Context;
import com.sonyericsson.android.camera.view.modeselector.view.AbsPanelView$PanelAttributes;
import com.sonyericsson.android.camera.view.modeselector.view.CapturingModePanelAttributes$AttributesBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CapturingModeAttributes implements CapturingModeUtil$CapturingMode {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "CapturingModeAttributes";
    private final String mActivityName;
    private final int mDescriptionLabelId;
    private final Long mId;
    private final CapturingModeAttributes$InternalCaptureType mInternalCaptureType;
    private final boolean mIsVisibleNormal;
    private final boolean mIsVisibleOneshot;
    private final boolean mIsVisibleShortcut;
    private final String mModeName;
    private final String mPackageName;
    private final int mSelectorIconId;
    private final int mSelectorLabelId;
    private final int mShortcutIconId;
    private final int mShortcutLabelId;
    private final Object mTag;

    public String getSelectorLabel() {
        return null;
    }

    public int hashCode() {
        return -1;
    }

    public CapturingModeAttributes(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, CapturingModeAttributes$InternalCaptureType capturingModeAttributes$InternalCaptureType, boolean z, boolean z2, boolean z3, Object obj) {
        this(null, str, str2, str3, i, i2, i3, i4, i5, capturingModeAttributes$InternalCaptureType, z, z2, z3, obj);
    }

    CapturingModeAttributes(Long l, String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, CapturingModeAttributes$InternalCaptureType capturingModeAttributes$InternalCaptureType, boolean z, boolean z2, boolean z3) {
        this(l, str, str2, str3, i, i2, i3, i4, i5, capturingModeAttributes$InternalCaptureType, z, z2, z3, null);
    }

    CapturingModeAttributes(Long l, String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, CapturingModeAttributes$InternalCaptureType capturingModeAttributes$InternalCaptureType, boolean z, boolean z2, boolean z3, Object obj) {
        this.mId = l;
        this.mPackageName = str;
        this.mActivityName = str2;
        this.mModeName = str3;
        this.mSelectorIconId = i;
        this.mSelectorLabelId = i2;
        this.mDescriptionLabelId = i3;
        this.mShortcutIconId = i4;
        this.mShortcutLabelId = i5;
        this.mInternalCaptureType = capturingModeAttributes$InternalCaptureType;
        this.mIsVisibleNormal = z;
        this.mIsVisibleOneshot = z2;
        this.mIsVisibleShortcut = z3;
        this.mTag = obj;
    }

    public String getModeName() {
        return this.mModeName;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public String getActivityName() {
        return this.mActivityName;
    }

    public int getSelectorIconId() {
        return this.mSelectorIconId;
    }

    public int getSelectorLabelId() {
        return this.mSelectorLabelId;
    }

    public int getDescriptionLabelId() {
        return this.mDescriptionLabelId;
    }

    public int getShortcutIconId() {
        return this.mShortcutIconId;
    }

    public int getShortcutLabelId() {
        return this.mShortcutLabelId;
    }

    public Long getId() {
        return this.mId;
    }

    public Object getTag() {
        return this.mTag;
    }

    public CapturingModeAttributes$InternalCaptureType getInternalCaptureType() {
        return this.mInternalCaptureType;
    }

    public boolean isVisibleNormal() {
        return this.mIsVisibleNormal;
    }

    public boolean isVisibleOneshot() {
        return this.mIsVisibleOneshot;
    }

    public boolean isVisibleShortcut() {
        return this.mIsVisibleShortcut;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil$CapturingMode
    public boolean is(String str, String str2) {
        return str.equals(this.mPackageName) && str2.equals(this.mModeName);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof CapturingModeAttributes)) {
            return false;
        }
        CapturingModeAttributes capturingModeAttributes = (CapturingModeAttributes) obj;
        return capturingModeAttributes.getPackageName().equals(this.mPackageName) && capturingModeAttributes.getModeName().equals(this.mModeName);
    }

    String getAttributes() {
        return "PackageName=" + this.mPackageName + ", ActivityName=" + this.mActivityName + ", ModeName=" + this.mModeName + ", SelectorIconId=" + this.mSelectorIconId + ", SelectorLabelId=" + this.mSelectorLabelId + ", DescriptionLabelId=" + this.mDescriptionLabelId + ", ShortcutIconId=" + this.mShortcutIconId + ", ShortcutLabelId=" + this.mShortcutLabelId;
    }

    public static List<AbsPanelView$PanelAttributes> toAttributesList(Context context, List<CapturingModeAttributes> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<CapturingModeAttributes> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(convert(context, it.next()));
        }
        return arrayList;
    }

    private static AbsPanelView$PanelAttributes convert(Context context, CapturingModeAttributes capturingModeAttributes) {
        if (capturingModeAttributes == null) {
            return null;
        }
        String resourceUri = ResourceUtil.getResourceUri(context, capturingModeAttributes.getPackageName(), capturingModeAttributes.getSelectorIconId());
        String selectorLabel = capturingModeAttributes.getSelectorLabel();
        if (selectorLabel == null) {
            selectorLabel = ResourceUtil.getString(context, capturingModeAttributes.getPackageName(), capturingModeAttributes.getSelectorLabelId(), "", 100);
        }
        String string = ResourceUtil.getString(context, capturingModeAttributes.getPackageName(), capturingModeAttributes.getDescriptionLabelId(), "", 500);
        CapturingModePanelAttributes$AttributesBuilder capturingModePanelAttributes$AttributesBuilder = new CapturingModePanelAttributes$AttributesBuilder();
        capturingModePanelAttributes$AttributesBuilder.setPackageName(capturingModeAttributes.getPackageName()).setActivityName(capturingModeAttributes.getActivityName()).setModeName(capturingModeAttributes.getModeName()).setIconUri(resourceUri).setTitle(selectorLabel).setDescription(string);
        return capturingModePanelAttributes$AttributesBuilder.build();
    }
}
