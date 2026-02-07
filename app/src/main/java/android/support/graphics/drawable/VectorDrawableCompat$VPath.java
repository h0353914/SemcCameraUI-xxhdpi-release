package android.support.graphics.drawable;

import android.content.res.Resources$Theme;
import android.graphics.Path;
import android.support.v4.graphics.PathParser;
import android.support.v4.graphics.PathParser$PathDataNode;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
abstract class VectorDrawableCompat$VPath extends VectorDrawableCompat$VObject {
    int mChangingConfigurations;
    protected PathParser$PathDataNode[] mNodes;
    String mPathName;

    public void applyTheme(Resources$Theme resources$Theme) {
    }

    public boolean canApplyTheme() {
        return false;
    }

    public boolean isClipPath() {
        return false;
    }

    public VectorDrawableCompat$VPath() {
        super(null);
        this.mNodes = null;
    }

    public void printVPath(int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = str + "    ";
        }
        Log.v("VectorDrawableCompat", str + "current path is :" + this.mPathName + " pathData is " + nodesToString(this.mNodes));
    }

    public String nodesToString(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        String str = " ";
        int i = 0;
        while (i < pathParser$PathDataNodeArr.length) {
            String str2 = str + pathParser$PathDataNodeArr[i].mType + ":";
            String str3 = str2;
            for (float f : pathParser$PathDataNodeArr[i].mParams) {
                str3 = str3 + f + ",";
            }
            i++;
            str = str3;
        }
        return str;
    }

    public VectorDrawableCompat$VPath(VectorDrawableCompat$VPath vectorDrawableCompat$VPath) {
        super(null);
        this.mNodes = null;
        this.mPathName = vectorDrawableCompat$VPath.mPathName;
        this.mChangingConfigurations = vectorDrawableCompat$VPath.mChangingConfigurations;
        this.mNodes = PathParser.deepCopyNodes(vectorDrawableCompat$VPath.mNodes);
    }

    public void toPath(Path path) {
        path.reset();
        if (this.mNodes != null) {
            PathParser$PathDataNode.nodesToPath(this.mNodes, path);
        }
    }

    public String getPathName() {
        return this.mPathName;
    }

    public PathParser$PathDataNode[] getPathData() {
        return this.mNodes;
    }

    public void setPathData(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        if (!PathParser.canMorph(this.mNodes, pathParser$PathDataNodeArr)) {
            this.mNodes = PathParser.deepCopyNodes(pathParser$PathDataNodeArr);
        } else {
            PathParser.updateNodes(this.mNodes, pathParser$PathDataNodeArr);
        }
    }
}
