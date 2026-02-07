package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class CollectionTypeAdapterFactory$Adapter<E> extends TypeAdapter<Collection<E>> {
    private final ObjectConstructor<? extends Collection<E>> constructor;
    private final TypeAdapter<E> elementTypeAdapter;

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
        return read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
        write(jsonWriter, (Collection) obj);
    }

    public CollectionTypeAdapterFactory$Adapter(Gson gson, Type type, TypeAdapter<E> typeAdapter, ObjectConstructor<? extends Collection<E>> objectConstructor) {
        this.elementTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
        this.constructor = objectConstructor;
    }

    @Override // com.google.gson.TypeAdapter
    public Collection<E> read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Collection<E> collectionConstruct = this.constructor.construct();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            collectionConstruct.add(this.elementTypeAdapter.read(jsonReader));
        }
        jsonReader.endArray();
        return collectionConstruct;
    }

    public void write(JsonWriter jsonWriter, Collection<E> collection) throws IOException {
        if (collection == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            this.elementTypeAdapter.write(jsonWriter, it.next());
        }
        jsonWriter.endArray();
    }
}
