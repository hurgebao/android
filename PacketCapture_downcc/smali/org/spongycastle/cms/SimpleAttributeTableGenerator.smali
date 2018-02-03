.class public Lorg/spongycastle/cms/SimpleAttributeTableGenerator;
.super Ljava/lang/Object;
.source "SimpleAttributeTableGenerator.java"

# interfaces
.implements Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# instance fields
.field private final attributes:Lorg/spongycastle/asn1/cms/AttributeTable;


# virtual methods
.method public getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 1
    .param p1, "parameters"    # Ljava/util/Map;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/spongycastle/cms/SimpleAttributeTableGenerator;->attributes:Lorg/spongycastle/asn1/cms/AttributeTable;

    return-object v0
.end method
