.class public Lcom/android/server/enterprise/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static mLogEnbaled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, b:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .local v0, count:I
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .end local v0           #count:I
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, effective:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, wildCardEntry:Ljava/lang/Object;,"TT;"
    .local p2, input:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, admin1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    const-string v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local p1           #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_0
    return-object p1

    .restart local p1       #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_0
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, effectiveListMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    const-string v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    .local v3, wildcardSetCount:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :goto_1
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v0

    .local v1, nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, p1

    .local v2, wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_2
    const-string v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const-string v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_3
    move-object v1, p1

    .restart local v1       #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, v0

    .restart local v2       #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_2

    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_4
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "aPropName"
    .parameter "aFileName"

    .prologue
    const/4 v7, 0x0

    const-string v0, "readPropertyValue"

    .local v0, TAG:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, lFReader:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v8, 0x200

    invoke-direct {v2, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v2, lBufReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, lLine:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, lParsedString:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    aget-object v6, v5, v8

    .local v6, result:Ljava/lang/String;
    :goto_0
    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v2, 0x0

    .end local v2           #lBufReader:Ljava/io/BufferedReader;
    .end local v3           #lFReader:Ljava/io/FileReader;
    .end local v4           #lLine:Ljava/lang/String;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v6

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File access error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_1

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lFReader:Ljava/io/FileReader;
    .restart local v4       #lLine:Ljava/lang/String;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v6, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v5           #lParsedString:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v2, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :goto_2
    move-object v6, v7

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v2, 0x0

    :cond_8
    :goto_3
    throw v7

    :cond_9
    if-eqz v3, :cond_a

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v2, 0x0

    :cond_b
    :goto_4
    move-object v6, v7

    goto :goto_1

    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .local v1, e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :catch_4
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_5
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "aPropName"
    .parameter "aPropValue"
    .parameter "aFileName"

    .prologue
    const-string v1, "writePropertyValue"

    .local v1, TAG:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, lSuccess:Z
    const/4 v12, 0x0

    .local v12, ps:Ljava/io/PrintStream;
    const/4 v5, 0x0

    .local v5, lFReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .local v3, lBufReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, lFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1a4

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .end local v5           #lFReader:Ljava/io/FileReader;
    .local v6, lFReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v14, 0x200

    invoke-direct {v4, v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .local v4, lBufReader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v14, ""

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v10, lStrBuffer:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, lFound:Z
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, lLine:Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v14, "="

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v8, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .end local v7           #lFile:Ljava/io/File;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    const/4 v5, 0x0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v3, 0x0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .end local v12           #ps:Ljava/io/PrintStream;
    :goto_3
    const/4 v12, 0x0

    .restart local v12       #ps:Ljava/io/PrintStream;
    :cond_4
    :goto_4
    return v11

    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lBufReader:Ljava/io/BufferedReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    :cond_5
    if-nez v8, :cond_6

    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v3, 0x0

    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    :try_start_6
    new-instance v13, Ljava/io/PrintStream;

    invoke-direct {v13, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .end local v12           #ps:Ljava/io/PrintStream;
    .local v13, ps:Ljava/io/PrintStream;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v11, 0x1

    if-eqz v6, :cond_c

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v5, 0x0

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_5
    if-eqz v3, :cond_7

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v3, 0x0

    :cond_7
    :goto_6
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/io/PrintStream;->close()V

    goto :goto_3

    .end local v7           #lFile:Ljava/io/File;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catchall_0
    move-exception v14

    :goto_7
    if-eqz v5, :cond_8

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    const/4 v5, 0x0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    const/4 v3, 0x0

    :cond_9
    :goto_8
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    const/4 v12, 0x0

    :cond_a
    throw v14

    :catch_1
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_9

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lBufReader:Ljava/io/BufferedReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v14

    move-object v3, v4

    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catchall_3
    move-exception v14

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto :goto_7

    .end local v7           #lFile:Ljava/io/File;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto/16 :goto_1

    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :cond_b
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto/16 :goto_4

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :cond_c
    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_5
.end method

.method public static writeToLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "logLevel"
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static writeToLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "logLevel"
    .parameter "tag"
    .parameter "logMessage"
    .parameter "tr"

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;)V
    .locals 1
    .parameter "logMessage"

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    const-string v0, "EDM : "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
