package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzmu;
import com.google.android.gms.internal.zzmv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class FastJsonResponse {
    private void zza(StringBuilder sb, FastJsonResponse$Field fastJsonResponse$Field, Object obj) {
        String string;
        if (fastJsonResponse$Field.zzpB() == 11) {
            string = fastJsonResponse$Field.zzpL().cast(obj).toString();
        } else if (fastJsonResponse$Field.zzpB() != 7) {
            sb.append(obj);
            return;
        } else {
            sb.append("\"");
            sb.append(zzmu.zzcz((String) obj));
            string = "\"";
        }
        sb.append(string);
    }

    private void zza(StringBuilder sb, FastJsonResponse$Field fastJsonResponse$Field, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, fastJsonResponse$Field, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        String str;
        String strZzi;
        Map<String, FastJsonResponse$Field<?, ?>> mapZzpD = zzpD();
        StringBuilder sb = new StringBuilder(100);
        for (String str2 : mapZzpD.keySet()) {
            FastJsonResponse$Field<?, ?> fastJsonResponse$Field = mapZzpD.get(str2);
            if (zza(fastJsonResponse$Field)) {
                Object objZza = zza(fastJsonResponse$Field, zzb(fastJsonResponse$Field));
                sb.append(sb.length() == 0 ? "{" : ",");
                sb.append("\"");
                sb.append(str2);
                sb.append("\":");
                if (objZza == null) {
                    str = "null";
                } else {
                    switch (fastJsonResponse$Field.zzpC()) {
                        case 8:
                            sb.append("\"");
                            strZzi = zzmk.zzi((byte[]) objZza);
                            break;
                        case 9:
                            sb.append("\"");
                            strZzi = zzmk.zzj((byte[]) objZza);
                            break;
                        case 10:
                            zzmv.zza(sb, (HashMap) objZza);
                            continue;
                        default:
                            if (fastJsonResponse$Field.zzpH()) {
                                zza(sb, (FastJsonResponse$Field) fastJsonResponse$Field, (ArrayList<Object>) objZza);
                            } else {
                                zza(sb, fastJsonResponse$Field, objZza);
                                continue;
                            }
                            break;
                    }
                    sb.append(strZzi);
                    str = "\"";
                }
                sb.append(str);
            }
        }
        sb.append(sb.length() > 0 ? "}" : "{}");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <O, I> I zza(FastJsonResponse$Field<I, O> fastJsonResponse$Field, Object obj) {
        return FastJsonResponse$Field.zzc(fastJsonResponse$Field) != null ? fastJsonResponse$Field.convertBack(obj) : obj;
    }

    protected boolean zza(FastJsonResponse$Field fastJsonResponse$Field) {
        return fastJsonResponse$Field.zzpC() == 11 ? fastJsonResponse$Field.zzpI() ? zzcv(fastJsonResponse$Field.zzpJ()) : zzcu(fastJsonResponse$Field.zzpJ()) : zzct(fastJsonResponse$Field.zzpJ());
    }

    protected Object zzb(FastJsonResponse$Field fastJsonResponse$Field) {
        String strZzpJ = fastJsonResponse$Field.zzpJ();
        if (fastJsonResponse$Field.zzpL() == null) {
            return zzcs(fastJsonResponse$Field.zzpJ());
        }
        zzx.zza(zzcs(fastJsonResponse$Field.zzpJ()) == null, "Concrete field shouldn't be value object: %s", fastJsonResponse$Field.zzpJ());
        HashMap<String, Object> mapZzpF = fastJsonResponse$Field.zzpI() ? zzpF() : zzpE();
        if (mapZzpF != null) {
            return mapZzpF.get(strZzpJ);
        }
        try {
            return getClass().getMethod("get" + Character.toUpperCase(strZzpJ.charAt(0)) + strZzpJ.substring(1), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    protected abstract Object zzcs(String str);

    protected abstract boolean zzct(String str);

    protected boolean zzcu(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean zzcv(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public abstract Map<String, FastJsonResponse$Field<?, ?>> zzpD();

    public HashMap<String, Object> zzpE() {
        return null;
    }

    public HashMap<String, Object> zzpF() {
        return null;
    }
}
