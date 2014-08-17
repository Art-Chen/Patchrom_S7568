.class Lcom/android/server/sec/MultiWindowList$MWDataListStorage;
.super Ljava/lang/Object;
.source "MultiWindowList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MWDataListStorage"
.end annotation


# static fields
.field public static final mHashList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/sec/IMultiWindowList;ILcom/android/server/sec/MWPackageItem;)V
    .locals 2
    .parameter "mwl"
    .parameter "index"
    .parameter "item"

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public add(Lcom/android/server/sec/IMultiWindowList;Lcom/android/server/sec/MWPackageItem;)V
    .locals 2
    .parameter "mwl"
    .parameter "item"

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clear(Lcom/android/server/sec/IMultiWindowList;)V
    .locals 1
    .parameter "mwl"

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;
    .locals 2
    .parameter "packageName"

    .prologue
    sget-object v1, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWPackageItem;

    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    return-object v0
.end method

.method public hasItemOfName(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    sget-object v1, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .local v0, Result:Z
    return v0
.end method

.method public remove(Lcom/android/server/sec/IMultiWindowList;Lcom/android/server/sec/MWPackageItem;)V
    .locals 2
    .parameter "mwl"
    .parameter "item"

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replace(Lcom/android/server/sec/IMultiWindowList;Lcom/android/server/sec/MWPackageItem;Lcom/android/server/sec/MWPackageItem;)V
    .locals 2
    .parameter "mwl"
    .parameter "item1"
    .parameter "item2"

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowList$MWDataListStorage;->mHashList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
