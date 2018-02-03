.class public Lorg/spongycastle/asn1/x500/X500Name;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdns:[Lorg/spongycastle/asn1/x500/RDN;

.field private style:Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/spongycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 101
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-interface {p1, p2}, Lorg/spongycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x500/X500Name;-><init>([Lorg/spongycastle/asn1/x500/RDN;)V

    .line 145
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 146
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 109
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lorg/spongycastle/asn1/x500/RDN;

    iput-object v3, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "index":I
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v4

    aput-object v4, v3, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 0
    .param p1, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lorg/spongycastle/asn1/x500/RDN;

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 129
    iput-object p2, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    .line 130
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 131
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 1
    .param p1, "rDNs"    # [Lorg/spongycastle/asn1/x500/RDN;

    .prologue
    .line 122
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V

    .line 123
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 65
    instance-of v0, p0, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lorg/spongycastle/asn1/x500/X500Name;

    .line 74
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 69
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 71
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 81
    instance-of v0, p1, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lorg/spongycastle/asn1/x500/X500Name;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 85
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 270
    if-ne p1, p0, :cond_0

    move v2, v3

    .line 293
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v2

    .line 275
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lorg/spongycastle/asn1/x500/X500Name;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    move v2, v4

    .line 277
    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 280
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 282
    .local v0, "derO":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 284
    goto :goto_0

    .line 289
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    new-instance v3, Lorg/spongycastle/asn1/x500/X500Name;

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-interface {v2, p0, v3}, Lorg/spongycastle/asn1/x500/X500NameStyle;->areEqual(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v2, v4

    .line 293
    goto :goto_0
.end method

.method public getRDNs()[Lorg/spongycastle/asn1/x500/RDN;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v1, v1

    new-array v0, v1, [Lorg/spongycastle/asn1/x500/RDN;

    .line 157
    .local v0, "tmp":[Lorg/spongycastle/asn1/x500/RDN;
    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    .line 255
    iget v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 262
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 260
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lorg/spongycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 262
    iget v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->toString(Lorg/spongycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
