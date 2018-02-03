.class public Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    .line 59
    return-void
.end method

.method private calculateMask(Ljava/lang/String;)I
    .locals 5
    .param p1, "actions"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " ,"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v2, "tok":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 67
    .local v0, "mask":I
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "s":Ljava/lang/String;
    const-string v3, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const-string v3, "ecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 79
    :cond_2
    const-string v3, "threadlocaldhdefaultparams"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 83
    :cond_3
    const-string v3, "dhdefaultparams"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 87
    :cond_4
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    or-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 93
    .end local v1    # "s":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 95
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unknown permissions passed to mask"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_6
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p1, p0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 134
    check-cast v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 136
    .local v0, "other":Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v3, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v4, v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;
    :cond_3
    move v1, v2

    .line 139
    goto :goto_0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 4
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    const/4 v1, 0x0

    .line 109
    instance-of v2, p1, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 121
    .local v0, "other":Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v2, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v2, v3

    iget v3, v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
