package android.support.v7.widget;

import android.os.AsyncTask;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

final class ActivityChooserModel$PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
    final /* synthetic */ ActivityChooserModel this$0;

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ Void doInBackground(Object[] objArr) {
        return doInBackground2(objArr);
    }

    ActivityChooserModel$PersistHistoryAsyncTask(ActivityChooserModel activityChooserModel) {
        this.this$0 = activityChooserModel;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Void doInBackground2(Object... objArr) {
        List list = (List) objArr[0];
        String str = (String) objArr[1];
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = this.this$0.mContext.openFileOutput(str, 0);
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            try {
                try {
                    try {
                        xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                        xmlSerializerNewSerializer.startDocument("UTF-8", true);
                        xmlSerializerNewSerializer.startTag(null, "historical-records");
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = (ActivityChooserModel$HistoricalRecord) list.remove(0);
                            xmlSerializerNewSerializer.startTag(null, "historical-record");
                            xmlSerializerNewSerializer.attribute(null, "activity", activityChooserModel$HistoricalRecord.activity.flattenToString());
                            xmlSerializerNewSerializer.attribute(null, "time", String.valueOf(activityChooserModel$HistoricalRecord.time));
                            xmlSerializerNewSerializer.attribute(null, "weight", String.valueOf(activityChooserModel$HistoricalRecord.weight));
                            xmlSerializerNewSerializer.endTag(null, "historical-record");
                        }
                        xmlSerializerNewSerializer.endTag(null, "historical-records");
                        xmlSerializerNewSerializer.endDocument();
                        this.this$0.mCanReadHistoricalData = true;
                    } catch (Throwable th) {
                        this.this$0.mCanReadHistoricalData = true;
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IllegalStateException e) {
                    Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + this.this$0.mHistoryFileName, e);
                    this.this$0.mCanReadHistoricalData = true;
                    if (fileOutputStreamOpenFileOutput != null) {
                    }
                }
            } catch (IOException e2) {
                Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + this.this$0.mHistoryFileName, e2);
                this.this$0.mCanReadHistoricalData = true;
                if (fileOutputStreamOpenFileOutput != null) {
                }
            } catch (IllegalArgumentException e3) {
                Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + this.this$0.mHistoryFileName, e3);
                this.this$0.mCanReadHistoricalData = true;
                if (fileOutputStreamOpenFileOutput != null) {
                }
            }
            if (fileOutputStreamOpenFileOutput != null) {
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (IOException unused2) {
                }
            }
            return null;
        } catch (FileNotFoundException e4) {
            Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + str, e4);
            return null;
        }
    }
}
