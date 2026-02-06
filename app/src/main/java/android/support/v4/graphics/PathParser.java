package android.support.v4.graphics;

import android.graphics.Path;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import java.util.ArrayList;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class PathParser {
    private static final String LOGTAG = "PathParser";

    static float[] copyOfRange(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        int iMin = Math.min(i3, length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, iMin);
        return fArr2;
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathParser$PathDataNode[] pathParser$PathDataNodeArrCreateNodesFromPathData = createNodesFromPathData(str);
        if (pathParser$PathDataNodeArrCreateNodesFromPathData == null) {
            return null;
        }
        try {
            PathParser$PathDataNode.nodesToPath(pathParser$PathDataNodeArrCreateNodesFromPathData, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    public static PathParser$PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int iNextStart = nextStart(str, i);
            String strTrim = str.substring(i2, iNextStart).trim();
            if (strTrim.length() > 0) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            i2 = iNextStart;
            i = iNextStart + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            addNode(arrayList, str.charAt(i2), new float[0]);
        }
        return (PathParser$PathDataNode[]) arrayList.toArray(new PathParser$PathDataNode[arrayList.size()]);
    }

    public static PathParser$PathDataNode[] deepCopyNodes(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        if (pathParser$PathDataNodeArr == null) {
            return null;
        }
        PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = new PathParser$PathDataNode[pathParser$PathDataNodeArr.length];
        for (int i = 0; i < pathParser$PathDataNodeArr.length; i++) {
            pathParser$PathDataNodeArr2[i] = new PathParser$PathDataNode(pathParser$PathDataNodeArr[i]);
        }
        return pathParser$PathDataNodeArr2;
    }

    public static boolean canMorph(PathParser$PathDataNode[] pathParser$PathDataNodeArr, PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        if (pathParser$PathDataNodeArr == null || pathParser$PathDataNodeArr2 == null || pathParser$PathDataNodeArr.length != pathParser$PathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathParser$PathDataNodeArr.length; i++) {
            if (pathParser$PathDataNodeArr[i].mType != pathParser$PathDataNodeArr2[i].mType || pathParser$PathDataNodeArr[i].mParams.length != pathParser$PathDataNodeArr2[i].mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static void updateNodes(PathParser$PathDataNode[] pathParser$PathDataNodeArr, PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        for (int i = 0; i < pathParser$PathDataNodeArr2.length; i++) {
            pathParser$PathDataNodeArr[i].mType = pathParser$PathDataNodeArr2[i].mType;
            for (int i2 = 0; i2 < pathParser$PathDataNodeArr2[i].mParams.length; i2++) {
                pathParser$PathDataNodeArr[i].mParams[i2] = pathParser$PathDataNodeArr2[i].mParams[i2];
            }
        }
    }

    private static int nextStart(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    private static void addNode(ArrayList<PathParser$PathDataNode> arrayList, char c, float[] fArr) {
        arrayList.add(new PathParser$PathDataNode(c, fArr));
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            PathParser$ExtractFloatResult pathParser$ExtractFloatResult = new PathParser$ExtractFloatResult();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (i < length) {
                extract(str, i, pathParser$ExtractFloatResult);
                int i3 = pathParser$ExtractFloatResult.mEndPosition;
                if (i < i3) {
                    fArr[i2] = Float.parseFloat(str.substring(i, i3));
                    i2++;
                }
                i = pathParser$ExtractFloatResult.mEndWithNegOrDot ? i3 : i3 + 1;
            }
            return copyOfRange(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void extract(String str, int i, PathParser$ExtractFloatResult pathParser$ExtractFloatResult) {
        pathParser$ExtractFloatResult.mEndWithNegOrDot = false;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = i; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == ' ') {
                z = false;
                z3 = true;
                if (z3) {
                }
            } else {
                if (cCharAt != 'E' && cCharAt != 'e') {
                    switch (cCharAt) {
                        case ',':
                            break;
                        case '-':
                            if (i2 == i || z) {
                                z = false;
                            } else {
                                pathParser$ExtractFloatResult.mEndWithNegOrDot = true;
                                z = false;
                                z3 = true;
                            }
                            break;
                        case '.':
                            if (z2) {
                                pathParser$ExtractFloatResult.mEndWithNegOrDot = true;
                                z = false;
                                z3 = true;
                            } else {
                                z = false;
                                z2 = true;
                            }
                            break;
                        default:
                            z = false;
                            break;
                    }
                } else {
                    z = true;
                }
                if (z3) {
                }
            }
            pathParser$ExtractFloatResult.mEndPosition = i2;
        }
        pathParser$ExtractFloatResult.mEndPosition = i2;
    }

    private PathParser() {
    }
}
