package com.google.gson.internal;

import java.util.Map$Entry;

final class LinkedTreeMap$Node<K, V> implements Map$Entry<K, V> {
    int height;
    final K key;
    LinkedTreeMap$Node<K, V> left;
    LinkedTreeMap$Node<K, V> next;
    LinkedTreeMap$Node<K, V> parent;
    LinkedTreeMap$Node<K, V> prev;
    LinkedTreeMap$Node<K, V> right;
    V value;

    LinkedTreeMap$Node() {
        this.key = null;
        this.prev = this;
        this.next = this;
    }

    LinkedTreeMap$Node(LinkedTreeMap$Node<K, V> linkedTreeMap$Node, K k, LinkedTreeMap$Node<K, V> linkedTreeMap$Node2, LinkedTreeMap$Node<K, V> linkedTreeMap$Node3) {
        this.parent = linkedTreeMap$Node;
        this.key = k;
        this.height = 1;
        this.next = linkedTreeMap$Node2;
        this.prev = linkedTreeMap$Node3;
        linkedTreeMap$Node3.next = this;
        linkedTreeMap$Node2.prev = this;
    }

    @Override // java.util.Map$Entry
    public K getKey() {
        return this.key;
    }

    @Override // java.util.Map$Entry
    public V getValue() {
        return this.value;
    }

    @Override // java.util.Map$Entry
    public V setValue(V v) {
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    @Override // java.util.Map$Entry
    public boolean equals(Object obj) {
        if (!(obj instanceof Map$Entry)) {
            return false;
        }
        Map$Entry map$Entry = (Map$Entry) obj;
        if (this.key == null) {
            if (map$Entry.getKey() != null) {
                return false;
            }
        } else if (!this.key.equals(map$Entry.getKey())) {
            return false;
        }
        if (this.value == null) {
            if (map$Entry.getValue() != null) {
                return false;
            }
        } else if (!this.value.equals(map$Entry.getValue())) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map$Entry
    public int hashCode() {
        return (this.key == null ? 0 : this.key.hashCode()) ^ (this.value != null ? this.value.hashCode() : 0);
    }

    public String toString() {
        return this.key + "=" + this.value;
    }

    public LinkedTreeMap$Node<K, V> first() {
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node = this.left;
        while (true) {
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node2 = linkedTreeMap$Node;
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = this;
            this = linkedTreeMap$Node2;
            if (this == null) {
                return linkedTreeMap$Node3;
            }
            linkedTreeMap$Node = this.left;
        }
    }

    public LinkedTreeMap$Node<K, V> last() {
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node = this.right;
        while (true) {
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node2 = linkedTreeMap$Node;
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = this;
            this = linkedTreeMap$Node2;
            if (this == null) {
                return linkedTreeMap$Node3;
            }
            linkedTreeMap$Node = this.right;
        }
    }
}
