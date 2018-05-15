const stack = (...elements) => {
    const _mem = elements
    let _last = elements.length - 1
    const push_back = item => _mem[++_last] = item
    const pop = () => _mem[_last--]
    const top = () => _mem[_last]
    return { push_back, pop, top }
}

const solve = lines => {
    const root = { xs: [] }
    const parents = stack(root)

    for (const l of lines) {
        const w = Number(l)
        const new_parent = { w, xs: [] }

        while (parents.top().w >= w)
            parents.pop()
        parents.top().xs.push(new_parent)
        parents.push_back(new_parent)
    }

    return root
}

const show = ({ w = '', xs }) => w + (
    xs.length ? `<ol>${
        xs.map(x => `<li>${show(x)}</li>`).join('')
    }</ol>` : ''
)

