const db = require("../data/dbConfig")

module.exports ={
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find(){
    return db("schemes")
}

function findById(id){
    return db("schemes").where("id",id).first()
}

function findSteps(id){
    return db.from("schemes").innerJoin("steps", "schemes.id", "steps.scheme_id").where("schemes.id", id)
}

async function add(scheme){
    const [ id ] = await db("schemes").insert(scheme)
    return db("schemes").where("id",id).first()
}

async function update(changes, id){
    const result = await db("schemes").where("id", id).update(changes)
    return db("schemes").where("id",id).first()
}

function remove(id){
    return db("schemes").where("id", id).del()
}