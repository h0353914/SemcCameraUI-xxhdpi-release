package com.sonyericsson.android.camera.view.modeselector.view;

public class CapturingModePanelAttributes implements AbsPanelView$PanelAttributes {
    private String mActivityName;
    private String mDescription;
    private String mIconUri;
    private String mModeName;
    private String mPackageName;
    private String mTitle;

    /* synthetic */ CapturingModePanelAttributes(CapturingModePanelAttributes$1 capturingModePanelAttributes$1) {
        this();
    }

    /* synthetic */ CapturingModePanelAttributes(CapturingModePanelAttributes capturingModePanelAttributes, CapturingModePanelAttributes$1 capturingModePanelAttributes$1) {
        this(capturingModePanelAttributes);
    }

    static /* synthetic */ String access$102(CapturingModePanelAttributes capturingModePanelAttributes, String str) {
        capturingModePanelAttributes.mPackageName = str;
        return str;
    }

    static /* synthetic */ String access$202(CapturingModePanelAttributes capturingModePanelAttributes, String str) {
        capturingModePanelAttributes.mActivityName = str;
        return str;
    }

    static /* synthetic */ String access$302(CapturingModePanelAttributes capturingModePanelAttributes, String str) {
        capturingModePanelAttributes.mModeName = str;
        return str;
    }

    static /* synthetic */ String access$402(CapturingModePanelAttributes capturingModePanelAttributes, String str) {
        capturingModePanelAttributes.mIconUri = str;
        return str;
    }

    static /* synthetic */ String access$502(CapturingModePanelAttributes capturingModePanelAttributes, String str) {
        capturingModePanelAttributes.mTitle = str;
        return str;
    }

    static /* synthetic */ String access$602(CapturingModePanelAttributes capturingModePanelAttributes, String str) {
        capturingModePanelAttributes.mDescription = str;
        return str;
    }

    private CapturingModePanelAttributes() {
    }

    private CapturingModePanelAttributes(CapturingModePanelAttributes capturingModePanelAttributes) {
        this.mPackageName = capturingModePanelAttributes.mPackageName;
        this.mActivityName = capturingModePanelAttributes.mActivityName;
        this.mModeName = capturingModePanelAttributes.mModeName;
        this.mIconUri = capturingModePanelAttributes.mIconUri;
        this.mTitle = capturingModePanelAttributes.mTitle;
        this.mDescription = capturingModePanelAttributes.mDescription;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public String getActivityName() {
        return this.mActivityName;
    }

    public String getModeName() {
        return this.mModeName;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.view.AbsPanelView$PanelAttributes
    public String getIconUri() {
        return this.mIconUri;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.view.AbsPanelView$PanelAttributes
    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String toString() {
        return "CapturingModePanelAttributes [mPackageName=" + this.mPackageName + ", mActivityName=" + this.mActivityName + ", mModeName=" + this.mModeName + ", mIconUri=" + this.mIconUri + ", mTitle=" + this.mTitle + ", mDescription=" + this.mDescription + "]";
    }

    public int hashCode() {
        return (31 * ((this.mModeName == null ? 0 : this.mModeName.hashCode()) + 31)) + (this.mPackageName != null ? this.mPackageName.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CapturingModePanelAttributes capturingModePanelAttributes = (CapturingModePanelAttributes) obj;
        if (this.mModeName == null) {
            if (capturingModePanelAttributes.mModeName != null) {
                return false;
            }
        } else if (!this.mModeName.equals(capturingModePanelAttributes.mModeName)) {
            return false;
        }
        if (this.mPackageName == null) {
            if (capturingModePanelAttributes.mPackageName != null) {
                return false;
            }
        } else if (!this.mPackageName.equals(capturingModePanelAttributes.mPackageName)) {
            return false;
        }
        return true;
    }
}
