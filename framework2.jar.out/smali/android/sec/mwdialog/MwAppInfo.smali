.class public final Landroid/sec/mwdialog/MwAppInfo;
.super Ljava/lang/Object;
.source "MwAppInfo.java"


# instance fields
.field private final appIcon:Landroid/graphics/drawable/Drawable;

.field private final appTitle:Ljava/lang/CharSequence;

.field private final componentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "appTitle"
    .parameter "appIcon"
    .parameter "componentName"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    .line 36
    iput-object p2, p0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object p3, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 93
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 94
    check-cast v0, Landroid/sec/mwdialog/MwAppInfo;

    .line 95
    .local v0, other:Landroid/sec/mwdialog/MwAppInfo;
    iget-object v3, p0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    .line 96
    iget-object v3, v0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    move v1, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iget-object v3, p0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget-object v3, p0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_6

    .line 101
    iget-object v3, v0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    move v1, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    iget-object v3, p0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 104
    goto :goto_0

    .line 105
    :cond_7
    iget-object v3, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_8

    .line 106
    iget-object v3, v0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    move v1, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_8
    iget-object v3, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 109
    goto :goto_0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 67
    const/16 v0, 0x1f

    .line 68
    .local v0, prime:I
    const/4 v1, 0x1

    .line 69
    .local v1, result:I
    iget-object v2, p0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 70
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 72
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 74
    return v1

    .line 69
    :cond_0
    iget-object v2, p0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 72
    :cond_2
    iget-object v3, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MwAppInfo [appTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/mwdialog/MwAppInfo;->appTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/mwdialog/MwAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/mwdialog/MwAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
