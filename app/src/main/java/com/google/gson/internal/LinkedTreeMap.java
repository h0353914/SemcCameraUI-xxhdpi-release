package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Comparator<Comparable> NATURAL_ORDER = new LinkedTreeMap$1();
    Comparator<? super K> comparator;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet; */
    private LinkedTreeMap$EntrySet entrySet;
    final LinkedTreeMap$Node<K, V> header;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet; */
    private LinkedTreeMap$KeySet keySet;
    int modCount;
    LinkedTreeMap$Node<K, V> root;
    int size;

    public LinkedTreeMap() {
        this(NATURAL_ORDER);
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.header = new LinkedTreeMap$Node<>();
        this.comparator = comparator == null ? NATURAL_ORDER : comparator;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$NodeFindByObject = findByObject(obj);
        if (linkedTreeMap$NodeFindByObject != null) {
            return linkedTreeMap$NodeFindByObject.value;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        LinkedTreeMap$Node<K, V> linkedTreeMap$NodeFind = find(k, true);
        V v2 = linkedTreeMap$NodeFind.value;
        linkedTreeMap$NodeFind.value = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node = this.header;
        linkedTreeMap$Node.prev = linkedTreeMap$Node;
        linkedTreeMap$Node.next = linkedTreeMap$Node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$NodeRemoveInternalByKey = removeInternalByKey(obj);
        if (linkedTreeMap$NodeRemoveInternalByKey != null) {
            return linkedTreeMap$NodeRemoveInternalByKey.value;
        }
        return null;
    }

    LinkedTreeMap$Node<K, V> find(K k, boolean z) {
        int iCompareTo;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node;
        Comparator<? super K> comparator = this.comparator;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node2 = this.root;
        if (linkedTreeMap$Node2 != null) {
            Comparable comparable = comparator == NATURAL_ORDER ? (Comparable) k : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(linkedTreeMap$Node2.key) : comparator.compare(k, linkedTreeMap$Node2.key);
                if (iCompareTo == 0) {
                    return linkedTreeMap$Node2;
                }
                LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = iCompareTo < 0 ? linkedTreeMap$Node2.left : linkedTreeMap$Node2.right;
                if (linkedTreeMap$Node3 == null) {
                    break;
                }
                linkedTreeMap$Node2 = linkedTreeMap$Node3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node4 = this.header;
        if (linkedTreeMap$Node2 == null) {
            if (comparator == NATURAL_ORDER && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            linkedTreeMap$Node = new LinkedTreeMap$Node<>(linkedTreeMap$Node2, k, linkedTreeMap$Node4, linkedTreeMap$Node4.prev);
            this.root = linkedTreeMap$Node;
        } else {
            linkedTreeMap$Node = new LinkedTreeMap$Node<>(linkedTreeMap$Node2, k, linkedTreeMap$Node4, linkedTreeMap$Node4.prev);
            if (iCompareTo < 0) {
                linkedTreeMap$Node2.left = linkedTreeMap$Node;
            } else {
                linkedTreeMap$Node2.right = linkedTreeMap$Node;
            }
            rebalance(linkedTreeMap$Node2, true);
        }
        this.size++;
        this.modCount++;
        return linkedTreeMap$Node;
    }

    /* JADX WARN: Multi-variable type inference failed */
    LinkedTreeMap$Node<K, V> findByObject(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return find(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    LinkedTreeMap$Node<K, V> findByEntry(Map$Entry<?, ?> map$Entry) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$NodeFindByObject = findByObject(map$Entry.getKey());
        if (linkedTreeMap$NodeFindByObject != null && equal(linkedTreeMap$NodeFindByObject.value, map$Entry.getValue())) {
            return linkedTreeMap$NodeFindByObject;
        }
        return null;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    void removeInternal(LinkedTreeMap$Node<K, V> linkedTreeMap$Node, boolean z) {
        int i;
        if (z) {
            linkedTreeMap$Node.prev.next = linkedTreeMap$Node.next;
            linkedTreeMap$Node.next.prev = linkedTreeMap$Node.prev;
        }
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node2 = linkedTreeMap$Node.left;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = linkedTreeMap$Node.right;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node4 = linkedTreeMap$Node.parent;
        int i2 = 0;
        if (linkedTreeMap$Node2 != null && linkedTreeMap$Node3 != null) {
            LinkedTreeMap$Node<K, V> linkedTreeMap$NodeLast = linkedTreeMap$Node2.height > linkedTreeMap$Node3.height ? linkedTreeMap$Node2.last() : linkedTreeMap$Node3.first();
            removeInternal(linkedTreeMap$NodeLast, false);
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node5 = linkedTreeMap$Node.left;
            if (linkedTreeMap$Node5 != null) {
                i = linkedTreeMap$Node5.height;
                linkedTreeMap$NodeLast.left = linkedTreeMap$Node5;
                linkedTreeMap$Node5.parent = linkedTreeMap$NodeLast;
                linkedTreeMap$Node.left = null;
            } else {
                i = 0;
            }
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node6 = linkedTreeMap$Node.right;
            if (linkedTreeMap$Node6 != null) {
                i2 = linkedTreeMap$Node6.height;
                linkedTreeMap$NodeLast.right = linkedTreeMap$Node6;
                linkedTreeMap$Node6.parent = linkedTreeMap$NodeLast;
                linkedTreeMap$Node.right = null;
            }
            linkedTreeMap$NodeLast.height = Math.max(i, i2) + 1;
            replaceInParent(linkedTreeMap$Node, linkedTreeMap$NodeLast);
            return;
        }
        if (linkedTreeMap$Node2 != null) {
            replaceInParent(linkedTreeMap$Node, linkedTreeMap$Node2);
            linkedTreeMap$Node.left = null;
        } else if (linkedTreeMap$Node3 != null) {
            replaceInParent(linkedTreeMap$Node, linkedTreeMap$Node3);
            linkedTreeMap$Node.right = null;
        } else {
            replaceInParent(linkedTreeMap$Node, null);
        }
        rebalance(linkedTreeMap$Node4, false);
        this.size--;
        this.modCount++;
    }

    LinkedTreeMap$Node<K, V> removeInternalByKey(Object obj) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$NodeFindByObject = findByObject(obj);
        if (linkedTreeMap$NodeFindByObject != null) {
            removeInternal(linkedTreeMap$NodeFindByObject, true);
        }
        return linkedTreeMap$NodeFindByObject;
    }

    private void replaceInParent(LinkedTreeMap$Node<K, V> linkedTreeMap$Node, LinkedTreeMap$Node<K, V> linkedTreeMap$Node2) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = linkedTreeMap$Node.parent;
        linkedTreeMap$Node.parent = null;
        if (linkedTreeMap$Node2 != null) {
            linkedTreeMap$Node2.parent = linkedTreeMap$Node3;
        }
        if (linkedTreeMap$Node3 != null) {
            if (linkedTreeMap$Node3.left == linkedTreeMap$Node) {
                linkedTreeMap$Node3.left = linkedTreeMap$Node2;
                return;
            } else {
                linkedTreeMap$Node3.right = linkedTreeMap$Node2;
                return;
            }
        }
        this.root = linkedTreeMap$Node2;
    }

    private void rebalance(LinkedTreeMap$Node<K, V> linkedTreeMap$Node, boolean z) {
        while (linkedTreeMap$Node != null) {
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node2 = linkedTreeMap$Node.left;
            LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = linkedTreeMap$Node.right;
            int i = linkedTreeMap$Node2 != null ? linkedTreeMap$Node2.height : 0;
            int i2 = linkedTreeMap$Node3 != null ? linkedTreeMap$Node3.height : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                LinkedTreeMap$Node<K, V> linkedTreeMap$Node4 = linkedTreeMap$Node3.left;
                LinkedTreeMap$Node<K, V> linkedTreeMap$Node5 = linkedTreeMap$Node3.right;
                int i4 = (linkedTreeMap$Node4 != null ? linkedTreeMap$Node4.height : 0) - (linkedTreeMap$Node5 != null ? linkedTreeMap$Node5.height : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    rotateLeft(linkedTreeMap$Node);
                } else {
                    rotateRight(linkedTreeMap$Node3);
                    rotateLeft(linkedTreeMap$Node);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                LinkedTreeMap$Node<K, V> linkedTreeMap$Node6 = linkedTreeMap$Node2.left;
                LinkedTreeMap$Node<K, V> linkedTreeMap$Node7 = linkedTreeMap$Node2.right;
                int i5 = (linkedTreeMap$Node6 != null ? linkedTreeMap$Node6.height : 0) - (linkedTreeMap$Node7 != null ? linkedTreeMap$Node7.height : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    rotateRight(linkedTreeMap$Node);
                } else {
                    rotateLeft(linkedTreeMap$Node2);
                    rotateRight(linkedTreeMap$Node);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                linkedTreeMap$Node.height = i + 1;
                if (z) {
                    return;
                }
            } else {
                linkedTreeMap$Node.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            linkedTreeMap$Node = linkedTreeMap$Node.parent;
        }
    }

    private void rotateLeft(LinkedTreeMap$Node<K, V> linkedTreeMap$Node) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node2 = linkedTreeMap$Node.left;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = linkedTreeMap$Node.right;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node4 = linkedTreeMap$Node3.left;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node5 = linkedTreeMap$Node3.right;
        linkedTreeMap$Node.right = linkedTreeMap$Node4;
        if (linkedTreeMap$Node4 != null) {
            linkedTreeMap$Node4.parent = linkedTreeMap$Node;
        }
        replaceInParent(linkedTreeMap$Node, linkedTreeMap$Node3);
        linkedTreeMap$Node3.left = linkedTreeMap$Node;
        linkedTreeMap$Node.parent = linkedTreeMap$Node3;
        linkedTreeMap$Node.height = Math.max(linkedTreeMap$Node2 != null ? linkedTreeMap$Node2.height : 0, linkedTreeMap$Node4 != null ? linkedTreeMap$Node4.height : 0) + 1;
        linkedTreeMap$Node3.height = Math.max(linkedTreeMap$Node.height, linkedTreeMap$Node5 != null ? linkedTreeMap$Node5.height : 0) + 1;
    }

    private void rotateRight(LinkedTreeMap$Node<K, V> linkedTreeMap$Node) {
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node2 = linkedTreeMap$Node.left;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node3 = linkedTreeMap$Node.right;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node4 = linkedTreeMap$Node2.left;
        LinkedTreeMap$Node<K, V> linkedTreeMap$Node5 = linkedTreeMap$Node2.right;
        linkedTreeMap$Node.left = linkedTreeMap$Node5;
        if (linkedTreeMap$Node5 != null) {
            linkedTreeMap$Node5.parent = linkedTreeMap$Node;
        }
        replaceInParent(linkedTreeMap$Node, linkedTreeMap$Node2);
        linkedTreeMap$Node2.right = linkedTreeMap$Node;
        linkedTreeMap$Node.parent = linkedTreeMap$Node2;
        linkedTreeMap$Node.height = Math.max(linkedTreeMap$Node3 != null ? linkedTreeMap$Node3.height : 0, linkedTreeMap$Node5 != null ? linkedTreeMap$Node5.height : 0) + 1;
        linkedTreeMap$Node2.height = Math.max(linkedTreeMap$Node.height, linkedTreeMap$Node4 != null ? linkedTreeMap$Node4.height : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map$Entry<K, V>> entrySet() {
        LinkedTreeMap$EntrySet linkedTreeMap$EntrySet = this.entrySet;
        if (linkedTreeMap$EntrySet != null) {
            return linkedTreeMap$EntrySet;
        }
        LinkedTreeMap$EntrySet linkedTreeMap$EntrySet2 = new LinkedTreeMap$EntrySet(this);
        this.entrySet = linkedTreeMap$EntrySet2;
        return linkedTreeMap$EntrySet2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedTreeMap$KeySet linkedTreeMap$KeySet = this.keySet;
        if (linkedTreeMap$KeySet != null) {
            return linkedTreeMap$KeySet;
        }
        LinkedTreeMap$KeySet linkedTreeMap$KeySet2 = new LinkedTreeMap$KeySet(this);
        this.keySet = linkedTreeMap$KeySet2;
        return linkedTreeMap$KeySet2;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }
}
