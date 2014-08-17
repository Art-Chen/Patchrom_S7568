.class public Lcom/sec/android/app/CscFeature;
.super Ljava/lang/Object;
.source "CscFeature.java"


# static fields
.field public static final Bool_NoTag:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/csc/feature.xml"

.field public static final Int_NoTag:I = 0x0

.field private static final MPS_FEATURE_XML:Ljava/lang/String; = "/system/csc/others.xml"

.field public static final Str_NoTag:Ljava/lang/String; = ""

.field public static final TAG_BOOLEAN_TEST_FALSE:Ljava/lang/String; = "CscFeature_BooleanTestFalse"

.field public static final TAG_BOOLEAN_TEST_NULL:Ljava/lang/String; = "CscFeature_BooleanTestNull"

.field public static final TAG_BOOLEAN_TEST_TRUE:Ljava/lang/String; = "CscFeature_BooleanTestTrue"

.field public static final TAG_INTEGER_TEST:Ljava/lang/String; = "CscFeature_IntegerTest"

.field public static final TAG_INTEGER_TEST_NULL:Ljava/lang/String; = "CscFeature_IntegerTestNull"

.field public static final TAG_STRING_TEST:Ljava/lang/String; = "CscFeature_StringTest"

.field public static final TAG_STRING_TEST_NULL:Ljava/lang/String; = "CscFeature_StringTestNull"

.field private static sInstance:Lcom/sec/android/app/CscFeature;


# instance fields
.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/CscFeature;->loadFeatureFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/CscFeature;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/CscFeature;

    invoke-direct {v0}, Lcom/sec/android/app/CscFeature;-><init>()V

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    :cond_0
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .local v7, fi:Ljava/io/InputStream;
    const/4 v3, -0x1

    .local v3, eventType:I
    const/4 v0, 0x0

    .local v0, TagName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, TagValue:Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    new-instance v6, Ljava/io/File;

    const-string v10, "/system/csc/feature.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, featureXmlFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v10, v10, v13

    if-gtz v10, :cond_3

    :cond_0
    new-instance v6, Ljava/io/File;

    .end local v6           #featureXmlFile:Ljava/io/File;
    const-string v10, "/system/csc/others.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6       #featureXmlFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-wide v10

    cmp-long v10, v10, v13

    if-gtz v10, :cond_3

    :cond_1
    if-eqz v7, :cond_2

    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    .end local v6           #featureXmlFile:Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .restart local v6       #featureXmlFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .local v5, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    .end local v7           #fi:Ljava/io/InputStream;
    .local v8, fi:Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_3
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_1
    if-eq v3, v12, :cond_8

    const/4 v10, 0x2

    if-ne v3, v10, :cond_5

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :cond_4
    :goto_2
    :try_start_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    goto :goto_1

    :cond_5
    const/4 v10, 0x4

    if-ne v3, v10, :cond_4

    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v10

    if-eqz v10, :cond_6

    :try_start_6
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v3

    goto :goto_1

    :catch_1
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v7, v8

    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #featureXmlFile:Ljava/io/File;
    .end local v8           #fi:Ljava/io/InputStream;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #fi:Ljava/io/InputStream;
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_2

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v7, 0x0

    goto :goto_0

    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #featureXmlFile:Ljava/io/File;
    .restart local v8       #fi:Ljava/io/InputStream;
    :cond_6
    :try_start_a
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    :catch_3
    move-exception v4

    .local v4, ex:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    .end local v4           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #featureXmlFile:Ljava/io/File;
    .end local v8           #fi:Ljava/io/InputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v7       #fi:Ljava/io/InputStream;
    :goto_4
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v7, :cond_2

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    const/4 v7, 0x0

    goto :goto_0

    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #featureXmlFile:Ljava/io/File;
    .restart local v8       #fi:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_1

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    move-object v7, v8

    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #featureXmlFile:Ljava/io/File;
    .end local v8           #fi:Ljava/io/InputStream;
    .restart local v7       #fi:Ljava/io/InputStream;
    :goto_5
    if-eqz v7, :cond_7

    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    const/4 v7, 0x0

    :cond_7
    :goto_6
    throw v10

    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #featureXmlFile:Ljava/io/File;
    .restart local v8       #fi:Ljava/io/InputStream;
    :cond_8
    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    :goto_7
    if-eqz v8, :cond_9

    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    const/4 v7, 0x0

    .end local v8           #fi:Ljava/io/InputStream;
    .restart local v7       #fi:Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v8       #fi:Ljava/io/InputStream;
    :catch_6
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_7

    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .end local v8           #fi:Ljava/io/InputStream;
    .restart local v7       #fi:Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #featureXmlFile:Ljava/io/File;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catch_a
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto :goto_5

    :catch_b
    move-exception v2

    goto :goto_4

    :catch_c
    move-exception v2

    goto :goto_3

    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #featureXmlFile:Ljava/io/File;
    .restart local v8       #fi:Ljava/io/InputStream;
    :cond_9
    move-object v7, v8

    .end local v8           #fi:Ljava/io/InputStream;
    .restart local v7       #fi:Ljava/io/InputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    goto :goto_0
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 2
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .restart local p2
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
