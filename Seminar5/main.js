main();

async function main() {
    document.querySelector('#pagination').addEventListener('click', async (event) => {
        if (event.target.tagName !== 'BUTTON') {
            return;
        }
        const page = +event.target.dataset.page;
        const users = await getUsers(page);
        renderUsers(users);
    });
}

async function getUsers(page) {
    const response = await fetch(`https://reqres.in/api/users?page=${page}`);
    const jsonData = await response.json();
    return jsonData.data;
}

async function renderUsers(users) {
    let content = "";
    for (let i = 0; i < users.length; i++) {
        content = content + `
            <div>
                <img src="${users[i].avatar}" alt="${users[i].first_name} ${users[i].last_name}">
                <p>${users[i].first_name} ${users[i].last_name}</p>
            </div>
        `;
    }
    document.querySelector('#app').innerHTML = content;
}