.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:I

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 938
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 919
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 920
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 921
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 922
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 924
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 925
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 926
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 927
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 929
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 930
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 931
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 932
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 933
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 934
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 935
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 936
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 939
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Inside MediaObject Constructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "filename"
    .parameter "album"
    .parameter "artist"
    .parameter "composer"
    .parameter "creationDate"
    .parameter "description"
    .parameter "duration"
    .parameter "id"
    .parameter "language"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "mimeType"
    .parameter "modificationDate"
    .parameter "path"
    .parameter "size"
    .parameter "title"
    .parameter "year"
    .parameter "genreName"

    .prologue
    .line 944
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 919
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 920
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 921
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 922
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 924
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 925
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 926
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 927
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 929
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 930
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 931
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 932
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 933
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 934
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 935
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 936
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 945
    iput-object p1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 946
    iput-object p2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 947
    iput-object p3, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 948
    iput-object p4, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 949
    iput-object p5, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 950
    iput-object p6, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 951
    if-eqz p7, :cond_0

    .line 952
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/mtp/MediaObject;->duration:I

    .line 956
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/mtp/MediaObject;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 957
    iput-object p8, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 958
    iput-object p9, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 959
    iput-object p10, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 960
    iput-object p11, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 961
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 962
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 963
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 964
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 965
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 966
    if-eqz p17, :cond_1

    .line 967
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/mtp/MediaObject;->year:I

    .line 971
    :goto_1
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 972
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Genre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    return-void

    .line 954
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/mtp/MediaObject;->duration:I

    goto :goto_0

    .line 969
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/mtp/MediaObject;->year:I

    goto :goto_1
.end method
