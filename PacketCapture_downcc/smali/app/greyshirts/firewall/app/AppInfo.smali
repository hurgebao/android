.class public Lapp/greyshirts/firewall/app/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/firewall/app/AppInfo$IconInfo;,
        Lapp/greyshirts/firewall/app/AppInfo$Entry;
    }
.end annotation


# static fields
.field private static defaultIcon:Landroid/graphics/drawable/Drawable;

.field private static final iconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lapp/greyshirts/firewall/app/AppInfo$IconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allAppName:Ljava/lang/String;

.field public final leaderAppName:Ljava/lang/String;

.field public final pkgs:Lapp/greyshirts/firewall/app/PackageNames;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lapp/greyshirts/firewall/app/AppInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 124
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lapp/greyshirts/firewall/app/AppInfo;->iconCache:Landroid/util/LruCache;

    .line 170
    const-string v0, "core"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "leaderAppName"    # Ljava/lang/String;
    .param p2, "allAppName"    # Ljava/lang/String;
    .param p3, "pkgs"    # [Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lapp/greyshirts/firewall/app/AppInfo;->leaderAppName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lapp/greyshirts/firewall/app/AppInfo;->allAppName:Ljava/lang/String;

    .line 37
    invoke-static {p3}, Lapp/greyshirts/firewall/app/PackageNames;->newInstance([Ljava/lang/String;)Lapp/greyshirts/firewall/app/PackageNames;

    move-result-object v0

    iput-object v0, p0, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    .line 39
    return-void
.end method

.method public static createFromUid(Landroid/content/Context;I)Lapp/greyshirts/firewall/app/AppInfo;
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 44
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lapp/greyshirts/firewall/app/AppInfo$Entry;>;"
    if-lez p1, :cond_7

    .line 51
    :try_start_0
    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 56
    .local v8, "pkgNames":[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v11, v8

    if-lez v11, :cond_4

    .line 57
    array-length v12, v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_5

    aget-object v7, v8, v11

    .line 58
    .local v7, "pkgName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 57
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 52
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgNames":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v11, "NRFW"

    const-string v12, "error getPackagesForUid(). package manager has died"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v11, 0x0

    .line 116
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-object v11

    .line 63
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgNames":[Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v10, v7, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 69
    .local v1, "appPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 70
    .local v0, "appName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 71
    iget-object v13, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_1
    if-eqz v0, :cond_2

    const-string v13, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 74
    :cond_2
    move-object v0, v7

    .line 76
    :cond_3
    new-instance v13, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    invoke-direct {v13, v0, v7}, Lapp/greyshirts/firewall/app/AppInfo$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appPackageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    .line 65
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v13, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    invoke-direct {v13, v7, v7}, Lapp/greyshirts/firewall/app/AppInfo$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lapp/greyshirts/firewall/app/AppInfo;->getNameFromUid(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 84
    new-instance v11, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nonpkg."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12}, Lapp/greyshirts/firewall/app/AppInfo$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "pkgNames":[Ljava/lang/String;
    :cond_5
    :goto_3
    new-instance v11, Lapp/greyshirts/firewall/app/AppInfo$1;

    invoke-direct {v11}, Lapp/greyshirts/firewall/app/AppInfo$1;-><init>()V

    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 110
    .local v9, "pkgs":[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v2, v11, [Ljava/lang/String;

    .line 111
    .local v2, "apps":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_8

    .line 112
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    iget-object v11, v11, Lapp/greyshirts/firewall/app/AppInfo$Entry;->pkgName:Ljava/lang/String;

    aput-object v11, v9, v4

    .line 113
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    iget-object v11, v11, Lapp/greyshirts/firewall/app/AppInfo$Entry;->appName:Ljava/lang/String;

    aput-object v11, v2, v4

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 86
    .end local v2    # "apps":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v9    # "pkgs":[Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "pkgNames":[Ljava/lang/String;
    :cond_6
    new-instance v11, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    const-string v12, "System"

    const-string v13, "nonpkg.noname"

    invoke-direct {v11, v12, v13}, Lapp/greyshirts/firewall/app/AppInfo$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 93
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "pkgNames":[Ljava/lang/String;
    :cond_7
    new-instance v11, Lapp/greyshirts/firewall/app/AppInfo$Entry;

    const-string v12, "System"

    const-string v13, "root.uid=0"

    invoke-direct {v11, v12, v13}, Lapp/greyshirts/firewall/app/AppInfo$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 116
    .restart local v2    # "apps":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v9    # "pkgs":[Ljava/lang/String;
    :cond_8
    new-instance v11, Lapp/greyshirts/firewall/app/AppInfo;

    const/4 v12, 0x0

    aget-object v12, v2, v12

    const-string v13, ","

    invoke-static {v13, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v9}, Lapp/greyshirts/firewall/app/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lapp/greyshirts/firewall/app/AppInfo;->getIcon(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getIcon(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "onlyPeek"    # Z

    .prologue
    .line 135
    const-class v7, Lapp/greyshirts/firewall/app/AppInfo;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lapp/greyshirts/firewall/app/AppInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020085

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sput-object v6, Lapp/greyshirts/firewall/app/AppInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 139
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 142
    .local v0, "appPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 143
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 144
    .local v4, "lastUpdate":J
    sget-object v6, Lapp/greyshirts/firewall/app/AppInfo;->iconCache:Landroid/util/LruCache;

    invoke-virtual {v6, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;

    .line 145
    .local v2, "iconInfo":Lapp/greyshirts/firewall/app/AppInfo$IconInfo;
    if-eqz v2, :cond_1

    iget-wide v8, v2, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;->date:J

    cmp-long v6, v8, v4

    if-nez v6, :cond_1

    iget-object v6, v2, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 146
    iget-object v1, v2, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v2    # "iconInfo":Lapp/greyshirts/firewall/app/AppInfo$IconInfo;
    .end local v4    # "lastUpdate":J
    :goto_0
    monitor-exit v7

    return-object v1

    .line 148
    :catch_0
    move-exception v6

    .line 151
    :cond_1
    if-eqz v0, :cond_3

    .line 152
    if-eqz p2, :cond_2

    .line 153
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_2
    :try_start_2
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 156
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;

    invoke-direct {v2}, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;-><init>()V

    .line 157
    .restart local v2    # "iconInfo":Lapp/greyshirts/firewall/app/AppInfo$IconInfo;
    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v8, v2, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;->date:J

    .line 158
    iput-object v1, v2, Lapp/greyshirts/firewall/app/AppInfo$IconInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 159
    sget-object v6, Lapp/greyshirts/firewall/app/AppInfo;->iconCache:Landroid/util/LruCache;

    invoke-virtual {v6, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v0    # "appPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconInfo":Lapp/greyshirts/firewall/app/AppInfo$IconInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 162
    .restart local v0    # "appPackageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_3
    sget-object v6, Lapp/greyshirts/firewall/app/AppInfo;->iconCache:Landroid/util/LruCache;

    invoke-virtual {v6, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lapp/greyshirts/firewall/app/AppInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static native getNameFromUid(I)Ljava/lang/String;
.end method
