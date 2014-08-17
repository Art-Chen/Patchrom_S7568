.class Landroid/database/sqlite/DatabaseConnectionPool;
.super Ljava/lang/Object;
.source "DatabaseConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "DatabaseConnectionPool"


# instance fields
.field private volatile mMaxPoolSize:I

.field private final mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;",
            ">;"
        }
    .end annotation
.end field

.field private rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "DatabaseConnectionPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DatabaseConnectionPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max Pool Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private doAsserts()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->verify()V
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$400(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V

    sget-boolean v1, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-short v1, v1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized close()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DatabaseConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing the connection pool on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .parameter "sql"

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .local v3, poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :try_start_0
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, poolSize:I
    const-string v6, "DatabaseConnectionPool"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5           #poolSize:I
    :catchall_0
    move-exception v6

    :goto_0
    monitor-exit p0

    throw v6

    .restart local v5       #poolSize:I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->doAsserts()V

    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->getFreePoolSize()I

    move-result v6

    if-nez v6, :cond_8

    iget v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    if-ne v6, v5, :cond_7

    iget v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    :cond_2
    :goto_1
    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :goto_2
    sget-boolean v6, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v6, :cond_d

    if-nez v3, :cond_d

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->isInStatementCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    :cond_4
    if-nez v3, :cond_2

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->rand:Ljava/util/Random;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    iput-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->rand:Ljava/util/Random;

    :cond_5
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/database/sqlite/DatabaseConnectionPool;->rand:Ljava/util/Random;

    iget v8, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #i:I
    :cond_7
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->createPoolConnection(S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v4, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    invoke-direct {v4, v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .local v4, poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :try_start_2
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .end local v4           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .restart local v3       #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v5, :cond_9

    :try_start_3
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->isInStatementCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    :cond_9
    if-nez v3, :cond_a

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_a

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    :cond_a
    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v2           #i:I
    :cond_d
    sget-boolean v6, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v6, :cond_e

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eq v6, v1, :cond_e

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_e
    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->acquire()V
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$200(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V

    const-string v6, "DatabaseConnectionPool"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "DatabaseConnectionPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "END get-connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    monitor-exit p0

    return-object v1

    .end local v3           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .restart local v4       #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .restart local v3       #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    goto/16 :goto_0
.end method

.method declared-synchronized getConnectionList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    .end local v0           #i:I
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getFreePoolSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    return v1

    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_1
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1
.end method

.method declared-synchronized getMaxPoolSize()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPool()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method isDatabaseObjFree(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .parameter "db"

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-short v1, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized release(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-short v1, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->doAsserts()V

    sget-boolean v1, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eq v1, p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    .local v0, poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DatabaseConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BEGIN release-conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing object already freed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->release()V
    invoke-static {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$300(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V

    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DatabaseConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "END release-conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setMaxPoolSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, buff:Ljava/lang/StringBuilder;
    const-string v3, "db: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", totalsize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", #free = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->getFreePoolSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxpoolsize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    .local v2, p:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v2           #p:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
